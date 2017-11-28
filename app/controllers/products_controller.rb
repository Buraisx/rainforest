class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
		@reviews = @product.reviews
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

		if @product.save
			flash[:notice] = "You have successfully created a post"
			redirect_to(products_path)
		else
			render :new
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])

		@product.name = params[:product][:name]
		@product.description = params[:product][:description]
		@product.price = params[:product][:price]
		@product.url = params[:product][:url]

		if @product.save
			flash[:notice] = "Product updated."
			redirect_to(products_path)
		else
			render :edit
		end
		
	end

	def destroy
		@products = Product.find(params[:id])
		@products.destroy
		flash[:notice] = "Removed Product."
		redirect_to(products_path)
	end

	def price_in_dollars(price)

		price_dollars = price.to_f / 100
		sprintf("$%.2f", price_dollars)
	end
end
