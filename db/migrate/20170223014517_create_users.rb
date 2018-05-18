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
      t.integer :verified_phone,          :null => false, :default => 0
      t.integer :verified_employer,       :null => false, :default => 0
      t.integer :complete_profile,        :null => false, :default => 0
      t.integer :verify_postjob_employer, :null => false, :default => 0
      t.integer :verify_findjob_parttimer,:null => false, :default => 0
      t.integer :time_login,              :null => false, :default => 0
     
      t.string :nationality
      t.string :race
      t.string :education
      t.string :sex
   
      t.string :bahasa_malaysia  
      t.string :chinese
      t.string :english
      t.string :tamil
      t.string :cantonese
      t.string :hokkien
      t.text :introduce_yourself
      t.string :working_location

      t.string :ifmalaysian

      #Preferred Working Location
      t.string :preferred_working_location1
      t.string :preferred_working_location2
      t.string :preferred_working_location3

      #Table information
      t.integer :profile_id

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
