class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :site
  has_many :product_line_items
  
end
