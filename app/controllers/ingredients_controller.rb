class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end


private

  def set_ingredient
    @ingredient= Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :dose)
  end

end
