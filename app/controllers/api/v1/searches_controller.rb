class Api::V1::SearchesController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  api :GET, '/v1/search', 'Search jobs with keyword'
  def index
    if params[:search]
      jobs = Job.where(['title LIKE ?', "%#{params[:search]}%"])
    end
    render json: jobs
  end
end