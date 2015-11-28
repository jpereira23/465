class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :story
      t.integer :like
      t.integer :dislike
      t.integer :view

      t.timestamps null: false
    end
  end
end
