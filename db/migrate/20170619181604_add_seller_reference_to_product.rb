class AddSellerReferenceToProduct < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :seller, foreign_key: true, index: true
  end
end
