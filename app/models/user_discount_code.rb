class UserDiscountCode < ApplicationRecord
  belongs_to :user
  belongs_to :discount_code
end
