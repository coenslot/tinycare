class RemoveNotificationFromFitbitUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :fitbit_users, :notification, :integer
  end
end
