class AddStuffToCareGivers < ActiveRecord::Migration[5.0]
  def change
  	add_column :care_givers, :first_name, :string
  	add_column :care_givers, :last_name, :string
  	add_column :care_givers, :insertion, :string
  	add_column :care_givers, :telephone, :integer
  	add_column :care_givers, :admin, :boolean
  end
end
