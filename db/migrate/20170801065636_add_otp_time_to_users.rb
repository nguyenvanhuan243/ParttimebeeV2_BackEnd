class AddOtpTimeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :otp_time, :integer, :null => false, :default => 0
  end
end
