class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :category
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :photo
      t.string :neighborhood
      t.string :city
      t.string :phone_number

      t.timestamps

    end
  end
end
