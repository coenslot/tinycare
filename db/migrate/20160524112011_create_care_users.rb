class CreateCareUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :care_users do |t|
      t.string :email
      t.string :first_name
      t.string :insertion
      t.string :last_name
      t.integer :telephone
      t.boolean :admin
      t.string :password

      t.timestamps
    end
  end
end
