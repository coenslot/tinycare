class AddNameToFitbitUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :name, :string
  end
end
