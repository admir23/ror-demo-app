class ChangeAboutFromIntegerToString < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :about, :string
  end
end
