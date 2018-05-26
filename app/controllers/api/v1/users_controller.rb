class Api::V1::UsersController < ApplicationController
  api :GET, '/v1/users', 'Show users list'
  def index
    render json: User.all
  end

  api :GET, '/v1/users/:id', 'Show user with id'
  def show
    # Why using find_by_id: If not exist record it will return nil.
    # find(id): If not exist record it will raise an exception.
    render json: User.find_by_id(params[:id])
  end
end