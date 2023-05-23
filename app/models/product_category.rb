class ProductCategory < ApplicationRecord
	has_many :products
	validates_presence_of :name, :description
	validates_uniqueness_of :name
end
