class Recipe < ApplicationRecord
    has_many :recipes
    belongs_ to :user
    validates :title, presence: true
end
