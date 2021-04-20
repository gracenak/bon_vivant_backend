RECIPE
- has_many :reviews
(:title, :img, :average_rating)

REVIEW
- belongs_to :recipe
(:recipe_id, :title, :content, :rating)
- belongs_to :user
(:user_id)

USER
- has_many reviews :: through recipes
(:username, :email, :passsword)