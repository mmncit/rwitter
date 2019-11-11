class AddForeignKeyInPosts < ActiveRecord::Migration[5.2]
  def up
    add_column("posts", "user_id", :integer)
    add_index("posts", "user_id")
  end
  def down
    remove_index("posts", "user_id")
    remove_column("posts", "user_id")
  end
end
