class Supplier < ApplicationRecord
	has_many :products
	validates_presence_of :name, :address, :phone
	validates_uniqueness_of :name
end
