class Site < ApplicationRecord
  belongs_to :customer
  
  accepts_nested_attributes_for :customer
end
