class CreateReels < ActiveRecord::Migration[7.0]
  def change
    create_table :reels do |t|
      t.string :title
      t.jsonb :duration, default: {}
      t.string :video_src
      t.string :category
      t.string :description
      t.string :link
      
      t.timestamps
    end
  end
end
