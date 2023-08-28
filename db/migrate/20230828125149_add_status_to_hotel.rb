class AddStatusToHotel < ActiveRecord::Migration[7.0]
  def change
    add_column :hotels, :status, :integer
  end
end
