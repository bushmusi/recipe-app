class Food < ApplicationRecord
  has_many :recipe_foods
  has_many :inventory_foods
  belongs_to :user
end
