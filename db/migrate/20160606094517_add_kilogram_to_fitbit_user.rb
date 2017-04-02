class AddKilogramToFitbitUser < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :kilogram, :integer
  end
end
