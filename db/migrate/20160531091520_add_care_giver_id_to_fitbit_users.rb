class AddCareGiverIdToFitbitUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :fitbit_users, :care_giver_id, :integer
  end
end
