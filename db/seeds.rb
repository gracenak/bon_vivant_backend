# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Recipe.destroy_all
Review.destroy_all

grace = User.create(username: "gracenak", email: "gracenak@gmail.com")

kate = User.create(username: "katelovestocook", email: "katesnow@gmail.com")

hummus = Recipe.create(title: "The Best Hummus", img: "https://cookieandkate.com/images/2018/05/best-hummus-550x824.jpg", ingredients: "1 can chickpeas, 1/2 tsp baking soda, 1/4 Cup lemon, 1 garlic clove, 1/2 tsp salt, 1/2 cup tahini, ice water, 1/2 tsp cumin, olive oil", directions: "Rinse chickpeas and add into the food processor along with the other ingredients. Drizzle olive oil and enjoy!", cook_time: "15 minutes", user_id: grace.id)

review = Review.create(comment: "Amazing!", rating: 5, user_id: kate.id, recipe_id: hummus.id)

