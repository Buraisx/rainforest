class Review < ApplicationRecord
	belongs_to :products
	validates :comment, presence: true
end
