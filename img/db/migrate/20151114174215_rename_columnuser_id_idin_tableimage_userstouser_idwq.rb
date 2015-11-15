class RenameColumnuserIdIdinTableimageUserstouserIdwq < ActiveRecord::Migration
  def change
    rename_column :image_users, :user_id_id, :user_id
  end
end
