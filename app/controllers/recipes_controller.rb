class RecipesController < ApplicationController
  # before_action :authenticate_user!, only: %i[create destroy]
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :public_recipes

  def index
    @user = current_user
    @recipes = @user&.recipes
  end

  def show
    @recipe = Recipe.find(params[:id] || params[:recipe_id])
    recipe_food_list = RecipeFood.where(recipe_id: params[:id] || params[:recipe_id]).pluck(:food_id)
    if_foods_list = InventoryFood.where(inventory_id: params[:inventory_id]).pluck(:food_id)
    diff = recipe_food_list - if_foods_list
    meta_data = Food.where(id: diff).pluck(:id, :price)
    puts "Data: #{meta_data}"
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @user = current_user
    @recipe = @user.recipes.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path, notice: 'Recipe created successfully!'
    else
      render new, status: :unprocessable_entity, alert: 'An error has occurred while creating the new recipe'
    end
  end

  def delete
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      redirect_to recipes_path, notice: 'Recipe deleted Successfully'
    else
      redirect_to root, alert: 'Could not delete recipe'
    end
  end

  def public_recipes
    @public_recipes = Recipe.includes(:user).all.where(public: true).order(created_at: :desc)
    render :public_recipes
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
