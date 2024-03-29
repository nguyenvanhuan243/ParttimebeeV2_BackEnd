class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name,                :null => false, :default => 'User Name'
      t.string :full_name
      t.string :email
      t.string :password
      t.string :confirm_password
      t.string :contact_name
      t.string :company_name
      t.string :address
      t.string :phone_number
      t.string :website
      t.text :company_description
      t.string :first_name,               :null => false, :default => 'Last Name'
      t.string :last_name,                :null => false, :default => 'First Name'
      t.integer :activated,               :null => false, :default => 0
      t.integer :blocked,                 :null => false, :default => 0
      t.string :password_reset_token
      t.string :password_reset_sent_at
      t.string :auth_token_reset
      t.string :url_avatar
      t.string :default_avatar
      t.datetime :day_of_birth
      t.timestamps
    end
  end
end
