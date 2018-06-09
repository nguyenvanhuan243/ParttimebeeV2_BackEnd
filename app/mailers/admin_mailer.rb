class AdminMailer < ApplicationMailer
  
# Admin reset password
  def password_reset(admin)
    @admin = admin
    mail :to => @admin.email, :subject => 'Confirm reset password'
  end

end
