class CocktailController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @ingredients = []
    Ingredient.all.each do |ingredient|
      @ingredients << ingredient.name
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to show_path(@cocktail.id)
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
