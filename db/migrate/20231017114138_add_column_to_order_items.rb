class AddColumnToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :instructions, :text
  end
end
