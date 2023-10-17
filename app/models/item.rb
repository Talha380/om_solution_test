class Item < ApplicationRecord
	has_many :order_items
	has_many :orders, through: :order_items
	validates :name, presence: true
	validates :price, presence: true
end
