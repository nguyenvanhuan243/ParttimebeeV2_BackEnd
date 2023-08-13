class UserController < ApplicationController
  def confirm_email
    user = User.find_by_confirm_token(params[:id])
    parttimebee = "https://parttimebee.my?confirmed=vwMmq0pDCS3JtyGa-QIwkw&userid=#{user.id}&active=j444fdsafd984utr845r4"
    localhost = "http://localhost:3001?confirmed=vwMmq0pDCS3JtyGa-QIwkw&userid=#{user.id}&active=j444fdsafd984utr845r4"
    url = Rails.env == 'production' ? parttimebee : localhost
    session[:user_id] = user.id
    user.activated = 1
    user.email_activate
    ModelMailer.wellcome_register(user).deliver
    redirect_to url
  end
end
