module ApplicationHelper

	def formatted(sale)
		str = ' '
		str << sale.purchase_count.to_s
		str << ' * '
		str << sale.item.price.to_s
		str
	end

	
end
