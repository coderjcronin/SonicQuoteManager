class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :site
  has_many :product_line_items

  def add_part(part)
    current_part = product_line_items.find_by(part_id: part.id)

    if current_part
      current_part.increment(:quanity)
    else
      current_part = product_line_items.build(part_id: part.id)
    end
    current_item
  end

end
