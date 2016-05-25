class CreateFitbitUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :fitbit_users do |t|
      t.integer :uid
      t.integer :identity
      t.string :password
      t.integer :notification
      t.integer :care_giver_id

      t.timestamps
    end
  end
end
