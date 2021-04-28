class Api::V1::ReviewsController < ApplicationController
    # protect_from_forgery with: :null_session

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
            # render json: {error: @review.errors.messages}, status: 422 
        end
    end

    def destroy
        @review = Review.find_by(id: params[:id])
        @recipe = Recipe.find(@review.recipe_id)
        if @review.destroy
            render json: @recipe
        else
            render json: {error: @review.errors.messages}, status: 422 
        end
    end

    private

    def set_recipe
        @recipe = Recipe.find(params[:recipe_id])
    end

    def review_params
        params.require(:review).permit(:comment, :rating, :user_id, :recipe_id)
    end
end
