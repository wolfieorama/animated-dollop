class ReviewAuthor < ApplicationRecord

  # es indexes
  # specifying index, type and back-reference
  # for updating after user save or destroy
  update_index('store#review_author') { self }

  # associations
  has_many :reviews
end
