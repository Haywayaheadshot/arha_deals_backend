class AddBabyProductToCartItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :cart_items, :baby_product, null: true, foreign_key: true
    add_column :cart_items, :baby_products_quantity, :integer
  end
end
