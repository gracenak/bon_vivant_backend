class Recipe < ApplicationRecord
    has_many :reviews
    belongs_to :user
    
    validates :title, presence: true

    before_create :slugify

    def slugify
        self.slug = title.parameterize
    end

    def avg_rating
        reviews.average(:rating).round(2).to_f
    end
end
