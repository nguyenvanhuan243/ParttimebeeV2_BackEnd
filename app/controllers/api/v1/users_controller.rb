class Api::V1::UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token    
  api :GET, '/v1/users', 'Show users list'
  def index
    render json: User.all
  end

  api :GET, '/v1/users/:id', 'Show specify user'
  def show
    # Why using find_by_id: If not exist record it will return nil.
    # find(id): If not exist record it will raise an exception.
    render json: User.find_by_id(params[:id])
  end

  def_param_group :user do
    param :email, String, "Email of the user", :required => true
    param :password, String, "Password of the user", :required => true
  end

  api :POST, '/v1/users', 'Create a new user'
  param_group :user
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  
  def user_params
    params.permit(:email, :password)
  end
end