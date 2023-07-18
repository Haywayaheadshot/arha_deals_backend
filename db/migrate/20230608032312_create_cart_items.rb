class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.references :phone, null: true, foreign_key: { to_table: 'phones' }
      t.integer :phone_quantity
      t.timestamps
    end
  end
end
