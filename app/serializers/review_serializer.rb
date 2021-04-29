class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :username, :recipe_id

  belongs_to :recipe
end
