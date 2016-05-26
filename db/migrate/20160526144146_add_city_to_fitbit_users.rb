class AddCityToFitbitUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :city, :string
  end
end
