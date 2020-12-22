class Part < ApplicationRecord
  has_many :product_line_items
  belongs_to :vendor
end