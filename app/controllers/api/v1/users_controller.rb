class Api::V1::UsersController < ApplicationController
  api :GET, '/v1/users', 'Show users list'
  def index
    render json: User.all
  end

  api :GET, '/v1/users/:id', 'Show user with id'
  def show
    render json: User.find_by_id(params[:id])
  end
end