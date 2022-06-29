class RecipesController < ApplicationController
  # before_action :authenticate_user!, only: %i[create destroy]
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: :public_recipes

  def index
    @user = current_user
    @recipes = @user&.recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
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
    @public_recipes = Recipe.includes(:user, :recipe_foods).all.where(public: true).order(created_at: :desc)
    render :public_recipes
  end

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
