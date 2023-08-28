class AddOwnerIdToOwner < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :owner_id, :integer
  end
end
