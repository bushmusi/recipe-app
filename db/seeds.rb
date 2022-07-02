user = User.new(
  :name                  => "Admin User",
  :email                 => "admin@admin.admin",
  :password              => "123456",
  :password_confirmation => "123456"
)
user.save!

food1 = Food.create(name: "Shiro", measurement_unit: "Liter", price: 34, user: user)
food2 = Food.create(name: "Burger", measurement_unit: "KG", price: 354, user: user)
food3 = Food.create(name: "Pizz", measurement_unit: "KG", price: 134, user: user)
food4 = Food.create(name: "Spegetto", measurement_unit: "KG", price: 34, user: user)
food5 = Food.create(name: "Rise", measurement_unit: "KG", price: 14, user: user)

inventory1 = Inventory.create(name: "First inventory", description: 'First Inventory Test', user: user)

inventoryFood1 = InventoryFood.create(quantity: 34, inventory: inventory1, food: food1)
inventoryFood2 = InventoryFood.create(quantity: 34, inventory: inventory1, food: food2)
inventoryFood3 = InventoryFood.create(quantity: 34, inventory: inventory1, food: food3)

recipe1 = Recipe.create(name: "Shiro Cooking", preparation_time: "34s", cooking_time: "46s",
                        description: "Bla bla bla", public: true, user: user)
recipe2 = Recipe.create(name: "Pizza Cooking", preparation_time: "34s", cooking_time: "46s",
                          description: "Bla bla bla", public: true, user: user)
recipe3 = Recipe.create(name: "Burgur Cooking", preparation_time: "34s", cooking_time: "46s",
                        description: "Bla bla bla", public: true, user: user)

recipe_food1 = RecipeFood.create(quanity: 3, recipe: recipe1, food: food1)
recipe_food2 = RecipeFood.create(quanity: 85, recipe: recipe1, food: food2)
recipe_food3 = RecipeFood.create(quanity: 89, recipe: recipe1, food: food3)
recipe_food4 = RecipeFood.create(quanity: 45, recipe: recipe1, food: food4)
recipe_food5 = RecipeFood.create(quanity: 2, recipe: recipe1, food: food5)
