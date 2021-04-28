class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :img, :ingredients, :directions, :cook_time, :user_id, :slug, :avg_rating

  has_many :reviews
  belongs_to :user
end
