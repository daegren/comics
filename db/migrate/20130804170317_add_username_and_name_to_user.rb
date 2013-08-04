class AddUsernameAndNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string, default: nil
  end
end
