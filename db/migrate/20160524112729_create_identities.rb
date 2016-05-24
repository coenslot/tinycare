class CreateIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :identities do |t|
      t.integer :fitbit_user_id
      t.string :provider
      t.string :acces_token
      t.string :refresh_token
      t.string :expires_at

      t.timestamps
    end
  end
end
