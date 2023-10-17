class ChangeDiscountCodeIdInOrders < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :discount_code_id, :integer, null:true
  end
end
