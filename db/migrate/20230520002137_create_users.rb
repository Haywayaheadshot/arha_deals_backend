class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :photo
      t.date :date_of_birth

      t.timestamps
    end
  end
end
