class Review < ApplicationRecord
    belongs_to :recipe
    belongs_to :user

    validates :comment, :rating, presence: true


end
