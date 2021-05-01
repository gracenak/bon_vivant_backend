class Api::V1::ReviewsController < ApplicationController
    # protect_from_forgery with: :null_session
    before_action :set_recipe

    skip_before_action :set_recipe, only: [:destroy]

    def index
        @reviews = Review.all
        render json: @reviews
    end

    def show
        @review = Review.find_by(id: params[:id])
        render json: @review
    end
    
    def create
        @review = @recipe.reviews.new(review_params)
        if @review.save
            render json: @recipe
        else
            render json: {error: @review.errors.messages}, status: 422 
        end
    end

    def destroy
        @review = Review.find_by(id: params[:id])
       
        recipe = @review.recipe
        if @review.destroy
            render json: recipe
        else
            render json: {error: @review.errors.messages}, status: 422 
        end
    end

    private

    def set_recipe
        @recipe = Recipe.find(params[:recipe_id])
    end

    def review_params
        params.require(:review).permit(:comment, :rating, :username, :recipe_id)
    end
end
