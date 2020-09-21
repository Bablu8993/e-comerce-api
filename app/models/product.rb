class Product < ApplicationRecord
  has_many :carts
  has_many :users, through: :carts
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :make, presence: true, numericality: true
end
