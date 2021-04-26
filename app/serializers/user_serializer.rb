class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :recipes
  has_many :reviews, through: :recipes
end
