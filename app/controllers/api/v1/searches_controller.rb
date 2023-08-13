class Api::V1::SearchesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  api :GET, '/v1/search', 'Search jobs with keyword'
  def index
    if params[:search]
      render json: Job.where(['title LIKE ?', "%#{params[:search]}%"])
    end
    render json: Job.where(city: params[:city]) if params[:city]
  end
end
