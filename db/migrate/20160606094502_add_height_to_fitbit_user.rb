class AddHeightToFitbitUser < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :height, :integer
  end
end
