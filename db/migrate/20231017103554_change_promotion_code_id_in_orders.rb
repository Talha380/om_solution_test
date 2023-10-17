class ChangePromotionCodeIdInOrders < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :promotion_code_id, :integer, null:true
  end
end
