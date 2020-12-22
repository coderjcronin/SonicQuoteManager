class AddValuetoSettings < ActiveRecord::Migration[6.0]
  def change
    add_column :settings, :value, :text
  end
end
