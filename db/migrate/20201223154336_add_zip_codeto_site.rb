class AddZipCodetoSite < ActiveRecord::Migration[6.0]
  def change
    add_column :sites, :zipCode, :text
  end
end
