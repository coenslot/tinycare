class AddEmailToFitbitUser < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :email, :string
  end
end
