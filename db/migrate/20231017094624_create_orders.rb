class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.text :instructions
      t.references :user, null: false, foreign_key: true
      t.references :promotion_code, null: false, foreign_key: true
      t.references :discount_code, null: false, foreign_key: true
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
