class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      #unique product name
      t.string :product_name
      #slogan
      t.text :tagline
      #webapp, device, etc.
      t.string :product_type
      t.string :customer
      t.text :task
      t.text :removing
      t.text :enabling
      t.string :competitor
      t.string :category
      t.boolean :advising
      t.timestamps null: false
			t.belongs_to :user
		end

    add_index :posts, :product_name, :unique => true
    add_index :posts, :tagline
    add_index :posts, :product_type
    add_index :posts, :customer
    add_index :posts, :category
    add_index :posts, :advising
    add_index :posts, :competitor
    end
end
