class DiscountCode < ApplicationRecord
	has_many :users, through: :user_discount_code
	has_many :orders
end
