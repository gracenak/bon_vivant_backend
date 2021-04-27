class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :user_id, :recipe_id

  belongs_to :recipe
  belongs_to :user
end
