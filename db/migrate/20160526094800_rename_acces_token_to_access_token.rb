class RenameAccesTokenToAccessToken < ActiveRecord::Migration[5.0]
  def change
    rename_column :identities, :acces_token, :access_token
  end
end
