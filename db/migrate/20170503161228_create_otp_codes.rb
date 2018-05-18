class CreateOtpCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :otp_codes do |t|
      t.integer :user_id
      t.string :otp_code_string
      t.datetime :time_expired
      t.timestamps
    end
  end
end
