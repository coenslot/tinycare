class CreateStakeholders < ActiveRecord::Migration[5.0]
  def change
    create_table :stakeholders do |t|
      t.integer :fitbit_user_id
      t.string :first_name
      t.string :insertion
      t.string :last_name
      t.string :stakeholder
      t.string :email
      t.integer :telephone
      t.integer :notification

      t.timestamps
    end
  end
end
