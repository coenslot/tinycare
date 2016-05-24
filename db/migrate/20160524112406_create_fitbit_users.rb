class CreateFitbitUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :fitbit_users do |t|
      t.integer :uid
      t.integer :identity_id
      t.integer :care_user_id
      t.string :fitbit_user
      t.string :password
      t.integer :care_user_id

      t.timestamps
    end
  end
end
