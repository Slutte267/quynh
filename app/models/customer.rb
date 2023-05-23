class Customer < ApplicationRecord
	has_many :orders
	validates_presence_of :name, :address, :phone
	validates_numericality_of :phone
end
