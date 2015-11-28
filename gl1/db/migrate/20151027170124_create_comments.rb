class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :description
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
