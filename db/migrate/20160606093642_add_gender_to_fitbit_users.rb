class AddGenderToFitbitUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :gender, :string
  end
end
