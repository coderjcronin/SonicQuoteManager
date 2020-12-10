class AddCustomerIdToSites < ActiveRecord::Migration[6.0]
  def change
    add_column :sites, :customer_id, :integer
  end
end
