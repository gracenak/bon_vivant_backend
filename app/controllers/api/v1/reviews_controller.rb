class Api::V1::ReviewsController < ApplicationController
    
    def create
        review = Review.new(review_params)
        if review.save
            render json: review
        else
            render json: {error: "Review did not save."}
        end
    end

    def show
        review = Review.find_by(id: params[:id])
        render json: review
    end

    def destroy
        review = Review.find_by(id: params[:id])
        review.destroy
        render json: destroy
    end

    private

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id, :recipe_id)
    end



end
