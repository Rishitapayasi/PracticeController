class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :tittle
      t.string :content

      t.timestamps
    end
  end
end
