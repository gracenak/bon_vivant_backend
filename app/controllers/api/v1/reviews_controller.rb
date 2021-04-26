class Api::V1::ReviewsController < ApplicationController

    before_action :set_recipe

    def index
        review = @recipe.reviews
        render json: ReviewSerializer.new(review)
    end

    def show
        review = Review.find_by(id: params[:id])
        render json: ReviewSerializer.new(review)
    end
    
    def create
        @review = @recipe.reviews.new(review_params)
        if @review.save
            # render json: ReviewSerializer.new(@review)
            render json: @recipe
        else
            render json: {error: "Review did not save."}
        end
    end

    def destroy
        review = Review.find_by(id: params[:id])
        review.destroy
        render json: destroy
    end

    private

    def set_recipe
        @recipe = Recipe.find(params[:recipe_id])
    end

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id, :recipe_id)
    end
end
