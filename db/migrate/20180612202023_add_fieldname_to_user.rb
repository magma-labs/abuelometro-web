class AddFieldnameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string
    add_column :users, :user_first_name, :string
    add_column :users, :user_last_name, :string
    add_column :users, :user_phone, :string
  end
end
