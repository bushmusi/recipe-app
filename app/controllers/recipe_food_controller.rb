class RecipeFoodController < ApplicationController
  def new
    @foods_available = Food.all
  end

  def create
    new_recipe_food = RecipeFood.new(recipe_food_params)
    if new_recipe_food.save
      redirect_to recipe_path(params[:recipe_id]), notice: 'Food Recipe was successfully created.'
    else
      render :new, alert: 'Error occurred, please try again. Food Recipe food not saved'
    end
  end

  def destroy
    recipe_food_to_delete = RecipeFood.find(params[:id])
    if recipe_food_to_delete.destroy
      redirect_to recipe_path(params[:recipe_id]), notice: 'Recipe food was successfully deleted.'
    else
      redirect_to recipe_path(params[:recipe_id]),
                  notice: "Error. Recipe food wasn't deleted, please try again!."
    end
  end

  def recipe_food_params
    food_name = Food.find(params[:food_id]).name
    params.permit(:quanity, :recipe_id, :food_id).with_defaults(recipe_id: params[:recipe_id],
                                                                name: food_name)
  end
end
