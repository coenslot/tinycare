class RemoveStakeholderFromStakehoders < ActiveRecord::Migration[5.0]
  def change
    remove_column :stakeholders, :stakeholder
  end
end
