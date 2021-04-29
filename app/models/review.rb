class Review < ApplicationRecord
    belongs_to :recipe

    validates :comment, :rating, presence: true


end
