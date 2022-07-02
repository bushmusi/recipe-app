class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_food
  has_many :foods, through: :recipe_food

  validates_presence_of :name, :cooking_time, :preparation_time, :description, :public
end
