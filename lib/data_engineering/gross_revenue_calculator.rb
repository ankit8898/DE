#This module Simply calculates the Gross Revenue on the Total Sales Entry

# Usage

# $ DataEngineering::GrossRevenueCalculator.calculate

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