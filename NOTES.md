RECIPE
- has_many :reviews
- belongs_to :user (:user_id)
(:title, :img, :cuisine, :ingredients, :directions :cook_time)

REVIEW
- belongs_to :recipe
(:recipe_id, :title, :content, :rating)
- belongs_to :user
(:user_id)

USER
- has_many :recipes
- has_many reviews, through: :recipes (get all the reviews and the recipes that they reviewed)
(:username, :email, :passsword)
