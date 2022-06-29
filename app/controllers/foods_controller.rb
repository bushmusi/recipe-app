class FoodsController < ApplicationController
  before_action :current_food, only: [:destroy]
  protect_from_forgery prepend: true
  def index
    @foods = Food.all.order(name: :asc)
    @food = Food.new
  end

  def create
    temp = Food.create(food_params)
    puts "-------#{temp.id}"
    puts "-------#{food_params}"
    redirect_to foods_path
  end

  def destroy
    @food.destroy
    redirect_to foods_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :user_id)
  end

  def current_food
    @food = Food.find(params[:id])
  end
end
