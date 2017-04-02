class AddCompanyNameToStakeholder < ActiveRecord::Migration[5.0]
  def change
    add_column :stakeholders, :company_name, :string
  end
end
