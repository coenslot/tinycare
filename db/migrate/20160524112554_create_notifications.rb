class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :warning
      t.integer :fitbit_id
      t.string :data_type
      t.string :grafity
      t.string :status
      t.string :document_file_name
      t.string :document_content_type
      t.string :document_file_size
      t.integer :fitbit_user_id

      t.timestamps
    end
  end
end
