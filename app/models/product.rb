class Product < ApplicationRecord

  # es indexes
  update_index('store#product') { self } # specifying index, type and back-reference
  # for updating after user save or destroy
  update_index('store#vendor') { self }

  # associations
  belongs_to :vendor
  has_many :reviews
end
