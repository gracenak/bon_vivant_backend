class User < ApplicationRecord
    has_many :recipes
    has_many :recipes, through: :reviews
    
    validates :username, presence: true
    validates :email, uniqueness: true
end
