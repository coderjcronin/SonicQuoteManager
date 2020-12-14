class CreateProductLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :product_line_items do |t|
      t.integer :quote_id
      t.integer :part_id
      t.decimal :labor_units
      t.decimal :unit_price
      t.decimal :full_service_price
      t.integer :quanity

      t.timestamps
    end
  end
end
