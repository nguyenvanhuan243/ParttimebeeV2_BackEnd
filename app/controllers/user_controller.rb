class UserController < ApplicationController
	def confirm_email
		user = User.find_by_confirm_token(params[:id])
		session[:user_id] = user.id
    user.activated = 1
		user.email_activate
    ModelMailer.wellcome_register(user).deliver
		redirect_to 'https://parttimebee.my/test/'
	end
end
