class AddUidToIndentity < ActiveRecord::Migration[5.0]
  def change
    add_column :identities, :uid, :integer
  end
end
