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

inventory1 = Inventory.create(name: "first inventory", user: user)

inventoryFood1 = InventoryFood.create(quantity: 34, inventory: inventory1, user: user)
