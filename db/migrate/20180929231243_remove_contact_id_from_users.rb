class RemoveContactIdFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :contact_id
  end
end
