class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates_presence_of :name, :quanity

  def get_food_price
    Food.find(self.food_id).price
  end
end
