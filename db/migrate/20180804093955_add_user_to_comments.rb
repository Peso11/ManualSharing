class AddUserToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :user
    add_foreign_key :comments, :users
  end
end
