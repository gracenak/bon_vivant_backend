class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :img, :ingredients, :directions, :cook_time, :slug, :avg_rating

  has_many :reviews
end
