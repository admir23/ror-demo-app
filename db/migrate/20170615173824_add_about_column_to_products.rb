class AddAboutColumnToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :about, :integer
  end
end
