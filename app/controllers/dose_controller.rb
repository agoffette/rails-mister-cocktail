class DoseController < ApplicationController

  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def show
    @dose = Dose.find(params[:id])

  end

  def create
    @cocktail = Cocktail.find(params["dose"]["id"])
    @ingredient = Ingredient.find_by_name(params["dose"]["ingredient"])
    @dose = Dose.new(dose_params.merge(cocktail: @cocktail, ingredient: @ingredient))
    @dose.save
    redirect_to show_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to show_path(@dose.cocktail_id)
  end

private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
