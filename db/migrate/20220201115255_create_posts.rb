
class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :tittle
      t.string :discription
      
      t.timestamps
    end
  end
end
