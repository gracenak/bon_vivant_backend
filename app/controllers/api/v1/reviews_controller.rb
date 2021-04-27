class Api::V1::ReviewsController < ApplicationController

    before_action :set_recipe

    def index
        @reviews = Review.all
        render json: @reviews
        # review = @recipe.reviews
        # render json: review
    end

    def show
        @review = Review.find_by(id: params[:id])
        render json: @review
    end
    
    def create
        @review = @recipe.reviews.new(review_params)
        binding.pry
        if @review.save
            render json: @recipe
        else
            render json: {error: "Review did not save."}
        end
    end

    def destroy
        binding.pry
        @review = Review.find_by(id: params[:id])
        @recipe = Recipe.find(@review.recipe_id)
        @review.destroy
        render json: @recipe
    end

    private

    def set_recipe
        @recipe = Recipe.find(params[:recipe_id])
    end

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id, :recipe_id)
    end
end
