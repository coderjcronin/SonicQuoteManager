class CreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      t.text :name
      t.text :poc
      t.text :phone
      t.text :url
      t.text :description

      t.timestamps
    end
  end
end
