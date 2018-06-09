class ModelMailer < ApplicationMailer

# Email verification.
  def email_verification(user)
    @user = user
  	mail to: @user.email, subject: 'Verification Email from parttimebee.'
  end

# Email to welcome user.
  def wellcome_register(user)
    @user = user
    mail to: @user.email, subject: 'Welcome to parttimebee!'
  end

end
