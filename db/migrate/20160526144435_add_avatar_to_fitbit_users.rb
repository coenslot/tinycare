class AddAvatarToFitbitUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :avatar, :string
  end
end
