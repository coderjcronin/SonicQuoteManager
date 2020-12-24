class AddToTax < ActiveRecord::Migration[6.0]
  def change
    add_column :taxes, :specialRate, :decimal
    add_column :taxes, :state, :text
  end
end
