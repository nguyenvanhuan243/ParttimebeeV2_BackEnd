class AddAuthTokenToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :auth_token, :string
  end
end
