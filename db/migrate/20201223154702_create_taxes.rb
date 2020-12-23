class CreateTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :taxes do |t|
      t.text :zipCode
      t.decimal :taxRate

      t.timestamps
    end
  end
end
