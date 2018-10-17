class AddUniqueUserPhonenoContactEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :phoneno, unique: true
    add_index :contacts, :email, unique: true
  end
end
