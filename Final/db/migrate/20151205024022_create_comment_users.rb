class CreateCommentUsers < ActiveRecord::Migration
  def change
    create_table :comment_users do |t|
      t.integer :user_id
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end
