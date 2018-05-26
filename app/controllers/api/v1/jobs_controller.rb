class Api::V1::JobsController < ApplicationController
  api :GET, '/v1/jobs', 'Show all jobs'
  def index
    render json: Job.all.limit(2)
  end
end