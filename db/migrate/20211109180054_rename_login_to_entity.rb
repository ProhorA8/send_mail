class RenameLoginToEntity < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :login, :entity
  end
end
