class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name,                :null => false, :default => 'User Name'
      t.string :full_name
      t.string :password
      t.string :first_name,               :null => false, :default => 'Last Name'
      t.string :last_name,                :null => false, :default => 'First Name'
      t.string :email
      t.string :phone_number
      t.string :phone_number_change
      t.integer :activated,               :null => false, :default => 0
      t.integer :blocked,                 :null => false, :default => 0
      t.datetime :day_of_birth
      t.string :address
      t.string :type_user
      # Information for facebook login
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.timestamps
    end
  end
end
