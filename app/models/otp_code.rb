class OtpCode < ApplicationRecord
	validates :otp_code_string, length: { is: 6 }

	
end
