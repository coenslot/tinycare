class RemoveNotificationFromStakeholders < ActiveRecord::Migration[5.0]
  def change
    remove_column :stakeholders, :notification
  end
end
