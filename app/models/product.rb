class Product < ApplicationRecord
	has_many :reviews
	validates :name, :description, :url, :price, presence: true
end
