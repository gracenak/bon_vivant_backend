class Recipe < ApplicationRecord
    has_many :recipes
    belongs_ to :user
end
