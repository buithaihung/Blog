class Blog < ApplicationRecord
    has_one_attached :image
    has_many :blog_review, -> { order "created_at DESC"}
end
