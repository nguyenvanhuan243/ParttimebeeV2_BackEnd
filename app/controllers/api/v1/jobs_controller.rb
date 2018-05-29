class Api::V1::JobsController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  api :GET, '/v1/jobs', 'Show all jobs'
  def index
    jobs = params[:limit] ? Job.limit(params[:limit]) : Job.all
    render json: jobs
  end
  
  api :GET, '/v1/jobs/:id', 'Get a specify job'
  def show
    render json: Job.find_by(id: params[:id])
  end

  api :DELETE, '/v1/jobs/:id', 'Delete a specify job'
  def destroy
    job = Job.find_by_id(params[:id])
    if job
      job.destroy
      render json: {
        success: true
      },
      status: 200
    else
      render json: {
        fail: true
      },
      status: 404
    end
  end
end