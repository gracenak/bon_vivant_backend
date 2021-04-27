class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :img, :ingredients, :directions, :cook_time, :user_id, :slug

  has_many :reviews
  belongs_to :user
end
