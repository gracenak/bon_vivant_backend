RECIPE
- has_many: :recipes
- belongs_to :user
(:title, :img, :average_rating, :cuisine, :ingredients, :directions :cook_time)

REVIEW
- belongs_to :recipe
(:recipe_id, :title, :content, :rating)
- belongs_to :user
(:user_id)

USER
- has_many :recipes
- has_many recipes :: through comments (get all the comments and the recipes that they commented on)
(:username, :email, :passsword)
