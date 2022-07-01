class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food

  validates_presence_of :name, :quantity
end
