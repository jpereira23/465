class RenameColumnimageIdIdinTableimageUserstoimageId < ActiveRecord::Migration
  def change
    rename_column :image_users, :image_id_id, :image_id
  end
end
