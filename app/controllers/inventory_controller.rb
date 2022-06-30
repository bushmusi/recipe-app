class InventoryController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def new; end

  def create
    new_inventory = Inventory.new(inventory_params)
    if new_inventory.save
      redirect_to inventory_index_path, notice: 'Inventory was successfully created.'
    else
      render :new, alert: 'Error occurred, please try again. Inventory not saved'
    end
  end

  private

  def inventory_params
    params.permit(:name, :description, :user_id).with_defaults(user_id: current_user.id)
  end
end
