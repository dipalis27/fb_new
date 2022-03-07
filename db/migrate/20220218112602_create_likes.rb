class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :likeble_id
      t.string :likeble_type
            
      t.timestamps
    end
  end
end
