class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.text :address
      t.string :state
      t.string :country
      t.string :invitation_medium
      t.boolean :email_status
      t.boolean :sms_status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
