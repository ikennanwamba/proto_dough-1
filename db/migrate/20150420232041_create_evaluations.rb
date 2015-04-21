class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
			t.integer :originality
			t.integer :impact
			t.integer :measurability
			t.integer :practicality
			t.integer :applicability

			t.text :comment

			t.belongs_to :user
			t.belongs_to :post
      t.timestamps null: false
    end
  end
end
