class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :password
      t.string :phoneno
      t.string :status
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
