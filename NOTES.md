RECIPE
- has_many :recipes
- belongs_to :user
(:title, :img, :cuisine, :ingredients, :directions :cook_time)

REVIEW
- belongs_to :recipe
(:recipe_id, :title, :content, :rating)
- belongs_to :user
(:user_id)

USER
- has_many :recipes
- has_many recipes, through: :reviews (get all the reviews and the recipes that they reviewed)
(:username, :email, :passsword)
