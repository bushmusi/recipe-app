class Food < ApplicationRecord
  has_many :recipe_foods
  has_many :inventory_foods
  has_many :recipe, through: :recipe_food
  belongs_to :user

  validates :name, presence: true, length: { minimum: 4, maximum: 40 }
end
