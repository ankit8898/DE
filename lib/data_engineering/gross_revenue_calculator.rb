module DataEngineering
	class GrossRevenueCalculator

		def self.calculate
			revenue = 0
			Sale.all.each do |sale|
				revenue += sale.purchase_count * sale.item.price
			end
			revenue
		end
	end
end