class Product < ApplicationRecord
  belongs_to :seller, optional: true
  belongs_to :category, optional: true


  validates_presence_of :name, :price
  validates :price, length: { in: 4..20 }

end
