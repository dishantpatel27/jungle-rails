class ReviewsController < ApplicationController
    before_filter :authorize
    def create
        @product = Product.find(params[:product_id])
        @review = @product.reviews.new(review_params)
        @review.user_id = current_user.id
        if @review.save
            redirect_to root_path
        end
      end
      private
      def review_params
        params.require(:review).permit(:description,:rating)
      end
end

Review.new