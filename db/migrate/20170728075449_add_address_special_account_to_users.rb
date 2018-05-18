class AddAddressSpecialAccountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address_special_account, :string
  end
end
