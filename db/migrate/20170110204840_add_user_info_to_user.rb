class AddUserInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :string, :string
    add_column :users, :lastname, :string
    add_column :users, :username, :string
  end
end
