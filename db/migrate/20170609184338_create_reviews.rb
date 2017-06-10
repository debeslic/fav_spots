class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :spot_id
      t.integer :group_enrollement_id
      t.text :review
      t.integer :rating

      t.timestamps

    end
  end
end
