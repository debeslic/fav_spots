class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :review_id
      t.integer :user_id
      t.integer :rating

      t.timestamps

    end
  end
end
