class User < ApplicationRecord
    has_many :recipes
    has_many :reviews, through: :recipes, dependent: :destroy

    validates :username, presence: true
    validates :email, uniqueness: true

end
