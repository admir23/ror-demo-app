class ChangeAboutFromIntegerToText < ActiveRecord::Migration[5.0]
  def up
    change_column :products, :about, :text
  end

  def down
    change_column :products, :about, :integer
  end
end
