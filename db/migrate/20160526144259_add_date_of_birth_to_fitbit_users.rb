class AddDateOfBirthToFitbitUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :birth, :date
  end
end
