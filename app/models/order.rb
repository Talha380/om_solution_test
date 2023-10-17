class Order < ApplicationRecord
  enum status: {in_progress: 0, completed: 1}
  belongs_to :user
  has_many :items, through: :order_items
  has_many :order_items, dependent: :destroy
end
