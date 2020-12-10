class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.text :name
      t.text :address
      t.text :phone
      t.text :email

      t.timestamps
    end
  end
end
