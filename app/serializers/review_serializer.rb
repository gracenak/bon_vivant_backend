class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :comment, :rating, :user_id, :recipe_id

  belongs_to :user
  belongs_to :recipe
end
