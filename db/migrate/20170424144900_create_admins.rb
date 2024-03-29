class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
    	t.string :email
    	t.string :password
      t.string :token_admin
      t.string :auth_token
      t.integer :expire_job_time, :null => false, :default => 0
      t.timestamps
    end
  end
end
