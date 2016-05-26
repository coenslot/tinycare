class RemoveUidFromFitbitUser < ActiveRecord::Migration[5.0]
  def change
    remove_column :fitbit_users, :uid, :integer
  end
end
