class LoginController < ApplicationController
  def index
  end

  def user_login
    User.all.each do |user|
      next unless user.email == params[:login][:email]
      next unless user.password == Digest::MD5.hexdigest(params[:login][:password])
      unless user.email_confirmed
        flash[:confirmed] = 'Your account has not been confirmed, Check email to confirm!'
        redirect_to '/login'
        return
      end
      if user.blocked == 0
        session[:user_id] = user.id
        redirect_to '/'
        return
      end
      next unless user.blocked == 1
      flash[:block_account_user] = 'Your account has been blocked, please contact us.'
      redirect_to '/login'
      return
    end
    flash[:notify_login_fail] = ''
    redirect_to :back
  end

  def send_mail_reset_password_user
    user = User.find_by_email(params[:reset][:email])
    if user.nil?
      flash[:send_password_reset_fail] = 'This email not exists in parttimebee system!'
    else
      user.send_password_reset
      flash[:send_password_reset_success] = 'Check your email to confirm reset password!'
    end
    redirect_to :back
  end

  # Tut reset password: http://railscasts.com/episodes/274-remember-me-reset-password
  def update_password_reset
    @user = User.find_by_password_reset_token!(params[:id])
    if params[:reset][:password] != params[:reset][:confirm_password]
      flash[:password_not_the_same] = 'Your password are not the same! Please try again'
      redirect_to :back
      return
    else
      if params[:reset][:password].size < 6 || params[:reset][:confirm_password].size < 6
        flash[:validate_password] = 'Your password is not strong!'
        redirect_to :back
      else
        @user.password = Digest::MD5.hexdigest(params[:reset][:confirm_password])
        @user.save!
        flash[:update_success] = 'Your password has been updated successfully!'
        redirect_to '/login'
      end
    end
  end
end
