class User < ApplicationRecord
    has_many :recipes
    has_many :recipes, through: :comments
end
