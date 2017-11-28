class Product < ApplicationRecord
	validates :name, :description, :url, :price, presence: true
end
