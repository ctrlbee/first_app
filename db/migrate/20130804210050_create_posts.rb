class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :status
      t.integer :customer_id

      t.timestamps
    end
  end
end
