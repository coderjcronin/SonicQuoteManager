class ProductLineItem < ApplicationRecord
  belongs_to :quote
  belongs_to :part
end
