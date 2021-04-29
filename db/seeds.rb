# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Review.destroy_all

hummus = Recipe.create(title: "The Best Hummus", img: "https://cookieandkate.com/images/2018/05/best-hummus-550x824.jpg", ingredients: "1 can chickpeas, 1/2 tsp baking soda, 1/4 Cup lemon, 1 garlic clove, 1/2 tsp salt, 1/2 cup tahini, ice water, 1/2 tsp cumin, olive oil", directions: "Rinse chickpeas and add into the food processor along with the other ingredients. Drizzle olive oil and enjoy!", cook_time: "15 minutes", slug: "the-best-hummus")

plum_tart = Recipe.create(title: "Ginger Plum Tart", img: "https://www.tasteofhome.com/wp-content/uploads/2018/01/Ginger-Plum-Tart_EXPS_TTSBZ18_23755_D02_16_2b-1.jpg?fit=696,1024", ingredients: "1 sheet refrigerated pie crust
    3-1/2 cups sliced fresh plums (about 10 medium)
    3 tablespoons plus 1 teaspoon coarse sugar, divided
    1 tablespoon cornstarch", directions: "Preheat oven to 400°. On a work surface, unroll crust. Roll to a 12-in. circle. Transfer to a parchment-lined baking sheet.
    In a large bowl, toss plums with 3 tablespoons sugar and cornstarch. Arrange plums on crust to within 2 in. of edges; sprinkle with ginger. Fold crust edge over plums, pleating as you go.
    In a small bowl, whisk egg white and water; brush over folded crust. Sprinkle with remaining sugar.
    Bake until crust is golden brown, 20-25 minutes. Cool on pan on a wire rack. Serve warm or at room temperature.", cook_time: "35 minutes", slug: "ginger-plum-tart")

review = Review.create(comment: "Amazing!", rating: 5, username: "gracenak", recipe_id: hummus.id)

review2 = Review.create(comment: "Great taste and beautiful!", rating: 5, username: "margotbear", recipe_id: plum_tart.id)

review3 = Review.create(comment: "It was alright", rating: 4, username: "diggypoo", recipe_id: hummus.id)

review4 = Review.create(comment: "Beautiful but taskes alright!", rating: 4, username: "gracenak", recipe_id: plum_tart.id)

