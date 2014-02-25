class Sale < ActiveRecord::Base

	belongs_to :item
	belongs_to :merchant
	belongs_to :purchaser
end
