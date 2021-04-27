class Api::V1::RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
        render json: @recipes
    end

    def create
        binding.pry
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            render json: @recipe
        else
            render json: {error: "Recipe did not save"}
        end
    end

    def show
        @recipe = Recipe.find_by(id: params[:id])
        render json: @recipe
    end

    def update
        binding.pry
        @recipe = Recipe.find(params[:id])
        @recipe.update(recipe_params)
        render json: @recipe
    end

    def destroy
        @recipe = Recipe.find_by(id: params[:id])
        @recipe.destroy
    end

    private


    def recipe_params
        params.require(:recipe).permit(:title, :img, :ingredients, :directions, :cook_time, :user_id)
    end

end
