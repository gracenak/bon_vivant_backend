class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :email

  has_many :recipes
  has_many :reviews, through: :recipes
end
