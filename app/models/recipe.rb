class Recipe < ApplicationRecord
    has_many :reviews, dependent: :destroy
    
    validates :title, presence: true

    before_create :slugify

    def slugify
        self.slug = title.parameterize
    end

    def avg_rating
        return 0 unless reviews.count.positive?
        reviews.average(:rating).round(2).to_f
    end
end
