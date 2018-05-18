class AddUrlAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :url_avatar, :string
  end
end
