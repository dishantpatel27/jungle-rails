class ReviewsController < ApplicationController
    before_filter :authorize
    def create
        @product = Product.find(params[:product_id])
        @review = @product.reviews.new(review_params)
        @review.user_id = current_user.id
        if @review.save
            redirect_to "/products/#{params[:product_id]}"
        end
      end
    def destroy
        @product = Product.find(params[:product_id])
        puts current_user.id
        to_destroy = @product.reviews.find_by(:user_id => current_user.id).destroy
        
        redirect_to "/products/#{params[:product_id]}"
    end
    private
    def review_params
        params.require(:review).permit(:description,:rating)
    end
end

