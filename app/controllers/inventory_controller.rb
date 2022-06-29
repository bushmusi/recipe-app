class InventoryController < ApplicationController
  def index
    @inventories = Inventory.all
    p @inventories
  end

  def new; end

  def create
    new_inventory = Inventory.new(post_params)
    new_post.Likes_Counter = 0
    new_post.Comments_Counter = 0
    if new_post.save
      redirect_to user_posts_path(params[:user_id]), notice: 'Post was successfully created.'
    else
      render :new, alert: 'Error occurred, please try again. Post not saved'
    end
  end

  private

  def inventory_params
    params.require(:inventory).permit(:quantity, :user_id).with_defaults(user_id: current_user.id)
  end
end
