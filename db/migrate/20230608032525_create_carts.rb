class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end

    add_reference :cart_items, :cart, foreign_key: true
  end
end



