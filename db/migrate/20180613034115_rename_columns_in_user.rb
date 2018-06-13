class RenameColumnsInUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :user_name, :name
    rename_column :users, :user_first_name, :first_name
    rename_column :users, :user_last_name, :second_name
    rename_column :users, :user_phone, :phone
  end
end
