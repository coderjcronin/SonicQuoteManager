json.extract! product_line_item, :id, :quote_id, :part_id, :labor_units, :unit_price, :full_service_price, :quanity, :created_at, :updated_at
json.url product_line_item_url(product_line_item, format: :json)
