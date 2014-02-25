module DataEngineering
	class Seeder

		def initialize(data)
			@parsed_data = data
		end

		def insert
			@parsed_data.each do |row|
				purchaser = Purchaser.where(name: row[:purchaser_name]).first_or_create
				item = Item.where(description: row[:item_description],price: row[:item_price]).first_or_create
				merchant = Merchant.where(name: row[:merchant_name],address: row[:merchant_address]).first_or_create
				sale = Sale.where(item: item,
					purchaser: purchaser,
					merchant: merchant,
					purchase_count: row[:purchase_count]).first_or_create
			end
		end
	end
end