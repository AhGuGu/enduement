class RenamePasswordDisgestToPasswordDigest < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :password_disgest, :password_digest
  end
end
