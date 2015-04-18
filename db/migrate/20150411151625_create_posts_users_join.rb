class CreatePostsUsersJoin < ActiveRecord::Migration
  def change
    create_table :posts_users, :id => false do |t|
    	t.integer "post_id"
    	t.integer "user_id"
    end
    add_index :posts_users, ["post_id", "user_id"]
  end
end
