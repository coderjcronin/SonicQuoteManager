class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.text :name
      t.text :address
      t.text :phone
      t.text :sitepoc
      t.text :sitepocphone
      t.text :notes

      t.timestamps
    end
  end
end
