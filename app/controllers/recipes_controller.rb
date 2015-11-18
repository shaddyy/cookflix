class RecipesController < ApplicationController
	def show
		@recipe = Recipe.find(params[:id])
	end

	def new
	end

	def create
		@recipe = Recipe.new(params.require(:recipe).permit(:title, :category, :preptime, :ingredients, :directions, :calories, :fats, :carbs, :protein))
 
  		@recipe.save
  		redirect_to @recipe
	end

	private
  		def recipe_params
    		params.require(:recipe).permit(:title, :category, :preptime, :ingredients, :directions, :calories, :fats, :carbs, :protein)
  		end

end
