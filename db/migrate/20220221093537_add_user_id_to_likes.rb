class AddUserIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :user_id, :integer
     rename_column :likes, :likeble_id, :likeable_id
     rename_column :likes, :likeble_type, :likeable_type
  end
end
