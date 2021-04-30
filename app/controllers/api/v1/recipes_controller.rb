class Api::V1::RecipesController < ApplicationController
    # protect_from_forgery with: :null_session

    # before_action :set_recipe_for_edit, only: [:update]

    def index
        @recipes = Recipe.all
        render json: @recipes
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            render json: @recipe
        else
            render json: {error: "Recipe did not save"}
            # render json: {error: @recipe.error.messages}, status: 422
        end
    end

    # def show
    #     @recipe = Recipe.find_by(slug: params[:slug])
    #     render json: @recipe
    # end

    def update
        binding.pry
        @recipe = Recipe.find_by(id: params[:id])
        binding.pry
        if @recipe.update(recipe_params)
            render json: @recipe
        else
            render json: {error: "Recipe did not update"}
            # render json: {error: @recipe.error.messages}, status: 422
        end
    end

    def destroy
        @recipe = Recipe.find_by(id: params[:id])
        if @recipe.destroy
            head :no_content
        else
            render json: {error: @recipe.error.messages}, status: 422
        end
    end

    private

    # def set_recipe_for_edit
    #     @recipe = Recipe.find_by(id: params[:id])
    # end


    def recipe_params
        params.require(:recipe).permit(:title, :img, :ingredients, :directions, :cook_time)
    end

end
