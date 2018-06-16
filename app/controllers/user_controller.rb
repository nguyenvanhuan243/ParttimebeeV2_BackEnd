class UserController < ApplicationController
	def confirm_email
		url = Rails.env == 'production' ? 'https://parttimebee.my' : 'http://localhost:3001'
		user = User.find_by_confirm_token(params[:id])
		session[:user_id] = user.id
    user.activated = 1
		user.email_activate
		ModelMailer.wellcome_register(user).deliver
		redirect_to url
	end
end
