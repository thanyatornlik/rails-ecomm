class Category < ApplicationRecord
    has_one_attached :image do |attachable|
        attachable.variants :thumb, resize_to_limit: [50, 50]
    end
end