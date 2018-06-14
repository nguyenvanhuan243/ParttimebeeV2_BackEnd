class AdminloginController < ApplicationController

  def index
  end

  def admin_login
    admin = Admin.first
    if params[:adminlogin][:email_admin] == admin.email && 
      Digest::MD5.hexdigest(params[:adminlogin][:password_admin]) == admin.password
      session[:token] = admin.token_admin
      redirect_to '/admin'
    end
  end

  def logout
    session[:token] = nil
    redirect_to '/admin-login'
  end

# Admin Forget Password
  def send_mail_reset_password
    admin = Admin.find_by_email(params[:reset][:email])
    if admin.nil?
      flash[:send_password_fail] = "Can't send email reset password, try again!"
    else
      AdminMailer.password_reset(admin).deliver
      flash[:send_password_reset_success] = 'Check your email to confirm reset password!'
    end
    redirect_to :back
  end

  def update_password_reset
    admin = Admin.find_by_password_reset_token!(params[:id])
    if params[:reset][:password] != params[:reset][:confirm_password]
      flash[:password_not_the_same] = 'Your password are not the same! Please try again'
    else
      if params[:reset][:password].size < 6 
        flash[:validate_password] = 'Your password is not strong!'
      else
        admin.password = Digest::MD5.hexdigest(params[:reset][:confirm_password])
        admin.save!
        flash[:update_success] = 'Your password has been updated successfully!'
      end
    end
    redirect_to :back
  end
end
