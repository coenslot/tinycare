class AddAdressToStakeholder < ActiveRecord::Migration[5.0]
  def change
    add_column :stakeholders, :adress, :string
  end
end
