class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventory_food

  validates_presence_of :name, :description
end
