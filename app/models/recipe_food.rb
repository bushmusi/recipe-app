class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates_presence_of :name, :quanity

  def current_food
    Food.find(food_id)
  end
end
