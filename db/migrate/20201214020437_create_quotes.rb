class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.integer :user_id
      t.integer :site_id
      t.text :name
      t.datetime :started
      t.datetime :updated
      t.boolean :locked
      t.text :material_lines
      t.text :service_lines
      t.text :equip_lines
      t.text :wire_lines
      t.integer :source
      t.string :referal
      t.integer :sale_type
      t.boolean :taxable
      t.integer :state_id
      t.integer :county_id
      t.integer :account_type

      t.timestamps
    end
  end
end
