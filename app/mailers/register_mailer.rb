class RegisterMailer < ApplicationMailer
  layout false 
# Reset your password
  def password_reset(user)
    @user = user
    mail :to => @user.email, subject: 'Reset your password'
  end
  
end
  