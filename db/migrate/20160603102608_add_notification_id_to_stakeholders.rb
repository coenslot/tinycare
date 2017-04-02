class AddNotificationIdToStakeholders < ActiveRecord::Migration[5.0]
  def change
    add_column :stakeholders, :notification_id, :integer
  end
end
