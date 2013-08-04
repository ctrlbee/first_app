class CreateMicrocomments < ActiveRecord::Migration
  def change
    create_table :microcomments do |t|
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
