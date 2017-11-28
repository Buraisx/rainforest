class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new

		@product.name = params[:product][:name]
		@product.description = params[:product][:description]
		@product.price = params[:product][:price]
		@product.url = params[:product][:url]

		@product.save
		redirect_to(products_path)
	end
end
