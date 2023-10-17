class PromotionCode < ApplicationRecord
	has_many :users, through: :user_promotion_code
	has_many :orders
end
