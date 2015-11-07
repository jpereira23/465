class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.boolean :permissions
      t.integer :user_id

      t.timestamps null: false
    end
  end
end