class AddTestColumnToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :test, :integer
  end
end
