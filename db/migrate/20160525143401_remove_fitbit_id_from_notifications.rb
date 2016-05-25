class RemoveFitbitIdFromNotifications < ActiveRecord::Migration[5.0]
  def change
    remove_column :notifications, :fitbit_id, :integer
  end
end
