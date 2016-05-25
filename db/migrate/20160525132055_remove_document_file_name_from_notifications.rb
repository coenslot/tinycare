class RemoveDocumentFileNameFromNotifications < ActiveRecord::Migration[5.0]
  def change
    remove_column :notifications, :document_file_name, :string
  end
end
