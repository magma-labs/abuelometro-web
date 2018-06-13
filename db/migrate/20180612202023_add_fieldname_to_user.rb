class AddFieldnameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :phone, :string
  end
end
