class Item < ActiveRecord::Base

	validates :price, presence: true 
end
