class AddPasswordResetToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :password_reset_token, :string
    add_column :admins, :password_reset_sent_at, :datetime
  end
end
