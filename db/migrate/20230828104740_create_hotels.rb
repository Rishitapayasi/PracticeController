class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.integer :number_of_rooms
      t.integer :owner_id

      t.timestamps
    end
  end
end
