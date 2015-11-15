class CreateImageUsers < ActiveRecord::Migration
  def change
    create_table :image_users do |t|
      t.references :user_id, index: true, foreign_key: true
      t.references :image_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
