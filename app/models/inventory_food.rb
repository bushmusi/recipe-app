class InventoryFood < ApplicationRecord
  belongs_to :inventory
  belongs_to :food

  validates_presence_of :quantity, :name
end
