class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :tagline
      t.string :product_type
      t.string :customer
      t.text :task
      t.text :removing
      t.text :enabling
      t.string :competitor
      t.string :category
      t.boolean :mentorship
      t.timestamps null: false
			t.belongs_to :user
		end

    add_index :posts, :title, :unique => true
    add_index :posts, :tagline
    add_index :posts, :product_type
    add_index :posts, :customer
    add_index :posts, :category
    add_index :posts, :mentorship
    add_index :posts, :competitor
    end
end
