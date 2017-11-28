class ReviewsController < ApplicationController
	def create
		@review = Review.new
		@review.comment = params[:review][:comment]
		@review.product_id = params[:product_id]	
		@review.save
		redirect_back(fallback_location: 'products#show')
	end
end
