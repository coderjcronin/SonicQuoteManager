class Part < ApplicationRecord
  has_many :product_line_items
  belongs_to :vendor
  before_destroy :not_referenced_by_any_product_line_item

  validates :name, :sku, :vendor, :price, :labor, presence: true

  private
    def not_referenced_by_any_product_line_item
      unless product_line_items.empty?
        errors.add(:base, 'Line items present, try depreciating instead.')
        throw :abort
      end
    end
    
end
