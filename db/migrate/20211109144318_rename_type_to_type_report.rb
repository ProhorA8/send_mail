# frozen_string_literal: true

class RenameTypeToTypeReport < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :type, :report_type
  end
end
