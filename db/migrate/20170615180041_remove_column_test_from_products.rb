class RemoveColumnTestFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :test, :integer
  end
end
