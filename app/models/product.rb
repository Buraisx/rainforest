class Product < ApplicationRecord
	has_many :reviews
	validates :name, :description, :url, :price, presence: true

	def price_in_dollars
		price_in_dollars = price
		sprintf("$%.2f", price_in_dollars)
	end
end