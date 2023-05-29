class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.string :name
      t.integer :amount
      t.integer :stock
      t.string :images_src, array: true, default: []
      t.string :specs, array: true, default: []
      t.string :condition
      t.string :video_src

      t.timestamps
    end
  end
end
