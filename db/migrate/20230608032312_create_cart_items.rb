class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.references :phone, null: false, foreign_key: { to_table: 'phones' }
      t.integer :quantity
      t.timestamps
    end
  end
end
