class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :quanity
      t.references :recipe, null: false, foreign_key: true
      
      # this table is also related to food by food-Id
      # t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
