class CreateDiscountCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :discount_codes do |t|
      t.string :code

      t.timestamps
    end
  end
end
