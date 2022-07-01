class InventoryController < ApplicationController
  def index
    @inventories = Inventory.all
    @current_user = current_user
  end

  def new; end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def create
    new_inventory = Inventory.new(inventory_params)
    if new_inventory.save
      redirect_to inventory_index_path, notice: 'Inventory was successfully created.'
    else
      render :new, alert: 'Error occurred, please try again. Inventory not saved'
    end
  end

  def destroy
    @inventory_to_delete = Inventory.find(params[:id])
    if @inventory_to_delete.destroy
      redirect_to inventory_index_path, notice: 'Inventory was successfully deleted.'
    else
      redirect_to inventory_index_path, notice: "Error. Inventory wasn't deleted, please try again!."
    end
  end

  private

  def inventory_params
    params.permit(:name, :description, :user_id).with_defaults(user_id: current_user.id)
  end
end
