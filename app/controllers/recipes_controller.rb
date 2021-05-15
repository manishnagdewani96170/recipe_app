class RecipesController < ApplicationController
  before_action :get_contentful_object
  
  def index
    @recipes = @contentful.get_all_recipes
    @recipes = RecipeDecorator.decorate_collection(@recipes)
  end
  
  def show
    @recipe = @contentful.get_recipe(params[:id])
    @recipe = RecipeDecorator.decorate(@recipe)
  end  

  private

  def get_contentful_object
    @contentful = ContentfulService.new
  end
end
