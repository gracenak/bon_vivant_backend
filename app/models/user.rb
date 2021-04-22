class User < ApplicationRecord
    has_many :recipes
    has_many :reviews, through: :recipes

    validates :username, presence: true
    validates :email, uniqueness: true

end
