class Api::V1::JobsController < ApplicationController
  api :GET, '/v1/jobs', 'Show all jobs'
  def index
    render json: Job.all
  end
  
  api :GET, '/v1/jobs/:id', 'Get a specify user'
  def show
    render json: Job.find_by(id: params[:id])
  end
end