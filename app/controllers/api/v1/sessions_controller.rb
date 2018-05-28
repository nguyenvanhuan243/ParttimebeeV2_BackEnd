class Api::V1::SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token    

  def_param_group :session do
    param :email, String, "Email of the user", :required => true
    param :password, String, "Password of the user", :required => true
  end

  api :POST, '/v1/sessions/', 'Login user'
  param_group :session
  def create
    email = login_params[:email]
    password = login_params[:password]
    @user = User.find_by(email: email)
    if @user
      render json: { success: true, user: @user }, status: 200
    else 
      render json: { success: false, user: nil }, status: 404
    end
  end

  private
  
  def login_params
    params.permit(:email, :password)
  end
end