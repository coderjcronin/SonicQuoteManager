class AddCategoryIDtoParts < ActiveRecord::Migration[6.0]
  def change
    add_column :parts, :categoryID, :integer
  end
end
