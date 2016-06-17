class Review < ApplicationRecord
  belongs_to :review_author
  belongs_to :product
end
