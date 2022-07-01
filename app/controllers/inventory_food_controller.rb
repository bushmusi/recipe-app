class InventoryFoodController < ApplicationController
  def new
    @foods_available = Food.all
  end

  def create
    new_inventory_food = InventoryFood.new(inventory_params)
    if new_inventory_food.save
      redirect_to "/inventory/#{params[:inventory_id]}", notice: 'Inventory was successfully created.'
    else
      render :new, alert: 'Error occurred, please try again. Inventory food not saved'
    end
  end

  def destroy
    inventory_food_to_delete = InventoryFood.find(params[:id])
    if inventory_food_to_delete.destroy
      redirect_to inventory_path(params[:inventory_id]), notice: 'Inventory food was successfully deleted.'
    else
      redirect_to inventory_path(params[:inventory_id]),
                  notice: "Error. Inventory food wasn't deleted, please try again!."
    end
  end

  private

  def inventory_params
    food_name = Food.find(params[:food_id]).name
    params.permit(:quantity, :inventory_id, :food_id).with_defaults(inventory_id: params[:inventory_id],
                                                                    name: food_name)
  end
end
