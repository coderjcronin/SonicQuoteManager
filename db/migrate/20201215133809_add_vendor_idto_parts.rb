class AddVendorIdtoParts < ActiveRecord::Migration[6.0]
  def change
    add_column :parts, :vendor_id, :integer
    add_column :parts, :labor, :decimal
    add_column :parts, :cutURL, :text
    add_column :parts, :fullServ, :decimal 
  end
end
