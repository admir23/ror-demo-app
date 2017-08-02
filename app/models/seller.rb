class Seller < ApplicationRecord
  has_many :products, dependent: :destroy

  # validates :name, presence: true
  # validates :rating, presence: true
  validates_presence_of :name, :rating

  validates :rating, numericality: true
end
