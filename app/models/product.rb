class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :product_category
  has_many :orders
  validates_presence_of :name, :description, :price, :ingredients, :benefits, :supplier, :product_category
  validates_uniqueness_of :name
  validates_numericality_of :price
end
