class Api::V1::RecipesController < ApplicationController
    # protect_from_forgery with: :null_session

    def index
        @recipes = Recipe.all
        render json: @recipes
    end

    def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            render json: @recipe
        else
            render json: {error: @recipe.error.messages}, status: 422
        end
    end

    # def show
    #     @recipe = Recipe.find_by(slug: params[:slug])
    #     render json: @recipe
    # end

    def update
        @recipe = Recipe.find_by(id: params[:id])
        if @recipe.update(ingredients: params[:recipe][:ingredients], directions: params[:recipe][:directions], cook_time: params[:recipe][:cook_time], img: params[:recipe][:img])
            @recipe.save
            render json: @recipe
        else
            render json: {error: @recipe.error.messages}, status: 422
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

    def recipe_params
        params.require(:recipe).permit(:title, :img, :ingredients, :directions, :cook_time)
    end

end
