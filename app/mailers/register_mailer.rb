class RegisterMailer < ApplicationMailer
  layout false 
# Reset your password
  def password_reset(user)
    @user = user
    mail :to => @user.email, subject: 'Reset your password'
  end

  def password_updated(user)
    @user = user
    mail :to => @user.email, subject: 'Password has been updated'
  end
  
end
  