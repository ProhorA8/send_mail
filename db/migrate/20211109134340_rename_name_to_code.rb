# frozen_string_literal: true

class RenameNameToCode < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :name, :code
  end
end
