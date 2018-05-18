class SessionsController < ApplicationController
  def create
  	user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    if user.type_user.nil?
      redirect_to '/employer-login-select'
    else
      if User.where(email: user.email).count.positive?
        flash[:facebook_used] = 'Your email account has been used'
        redirect_to '/'
      end
    end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to '/'
  end

  def select_user_type
    current_user = User.find(session[:user_id])
  	if params[:type] == 'parttimer'
  		current_user.type_user = 'parttimer'
  	else
  		current_user.type_user = 'employer'
      profile = Profile.new
      profile.user_id = current_user.id
      profile.company_logo = current_user.avatar
      profile.save
  	end
    Notification.notification_wellcome(current_user)
  	current_user.save
  	redirect_to '/'
  end
end

