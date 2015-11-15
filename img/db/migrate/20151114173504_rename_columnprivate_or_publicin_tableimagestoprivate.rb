class RenameColumnprivateOrPublicinTableimagestoprivate < ActiveRecord::Migration
  def change
    rename_column :images, :private_or_public, :private
  end
end
