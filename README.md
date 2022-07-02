# Recipe App

The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

# Built With
 - Ruby on Rails
 - Bootstrap 5

# Live Demo
  - [Habesha-Recipe](https://habesha-recipe.herokuapp.com/)

# Additional Tools
  1. Rubocop
  2. Stylelint
  3. Ruby Gems

# Getting Started
To get local copy of the project and run

1. ``git clone https://github.com/bushmusi/recipe-app/``
2. ``cd recipe-app``
3. ``gem install bundler``
4. ``bundle install``
5. ``rails s``

## Database Setup
Setup db

1. ``su - postgres``
2. ``psql``
3. ``create role recipe with createdb login password 'recipe'``
4. ``rails db:setup``
5. ``rails db:create``

# Tests

1. ``bundle exec rspec``
2. ``rubocop``

## Authors

👤 **Bushra Mustofa**

- GitHub: [@bushmusi](https://github.com/bushmusi)
- Twitter: [@bushera_mestofa](https://twitter.com/bushera_mestofa)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/bushra-mustofa)


👤 **Zahra Aershia**

- GitHub: [@ZahraArshia](https://github.com/ZahraArshia)
- Twitter: [@ZahraArshia](https://twitter.com/ZahraArshia)
- LinkedIn: [@ZahraArshia](https://www.linkedin.com/in/ZahraArshia/)

👤 **Alick Nyirenda**

- GitHub: [@AlickNyirenda](https://github.com/Beardless-sheik)
- Twitter: [@AlickNyirenda](https://twitter.com/AlickNyirenda)
- LinkedIn: [@AlickNyirenda](https://www.linkedin.com/in/AlickNyirenda/)



## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/bushmusi/recipe-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse: [microverse community](https://github.com/microverseinc)

## 📝 License

This project is [MIT](./MIT.md) licensed.
