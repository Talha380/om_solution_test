class RemoveDiscountAndPromotionCodeIdFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :promotion_code_id, :integer
    remove_column :orders, :discount_code_id, :integer
  end
end
