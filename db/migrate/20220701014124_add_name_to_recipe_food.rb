class AddNameToRecipeFood < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_foods, :name, :string
  end
end
