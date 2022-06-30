class FoodsController < ApplicationController
  before_action :current_food, only: [:destroy]
  protect_from_forgery prepend: true
  def index
    @foods = Food.all.order(name: :asc)
    @food = Food.new
  end

  def create
    temp = Food.new(food_params)
    if temp.save
      redirect_to foods_path, notice: 'Food Created'
    else
      redirect_to foods_path, notice: 'Food Not Created'
    end
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
