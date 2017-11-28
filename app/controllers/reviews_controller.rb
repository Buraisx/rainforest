class ReviewsController < ApplicationController
	def create
		@review = Review.new
		@review.comment = params[:review][:comment]
		@review.product_id = params[:product_id]	
		@review.save
		redirect_back(fallback_location: 'products#show')
	end

	def edit
		@product = Product.find(params[:product_id])
		@new_review = Review.find(params[:id])
	end

	def update
		@product = Product.find(params[:product_id])
		@new_review = Review.find(params[:id])

		@new_review.comment = params[:review][:comment]

		@new_review.save
		redirect_back(fallback_location: 'products#show')
	end

	def destroy
		@product = Product.find(params[:product_id])
		@new_review = Review.find(params[:id])

		@new_review.destroy
		redirect_to product_path(@product)
	end
end
