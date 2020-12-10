class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.text :name
      t.text :sku
      t.text :description
      t.numeric :price

      t.timestamps
    end
  end
end
