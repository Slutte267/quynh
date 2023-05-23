class Order < ApplicationRecord
  belongs_to :product
  belongs_to :customer
  validates_presence_of :product, :customer, :quantity, :price, :delivery_address, :payment_method
  validates_numericality_of :price
end
