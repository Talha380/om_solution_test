class UserPromotionCode < ApplicationRecord
  belongs_to :user
  belongs_to :promotion_code
end
