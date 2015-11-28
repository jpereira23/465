class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :filename 
      t.string :description
      t.integer :view
      t.integer :hour

      t.timestamps null: false
    end
  end
end
