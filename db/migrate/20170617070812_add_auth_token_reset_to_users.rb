class AddAuthTokenResetToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :auth_token_reset, :string
  end
end
