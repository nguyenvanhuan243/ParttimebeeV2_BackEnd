class Api::V1::JobsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  api :GET, '/v1/jobs', 'Show all jobs'
  def index
    jobs = params[:limit] ? Job.limit(params[:limit]).order(created_at: :desc) : Job.all.order(created_at: :desc)
    render json: jobs
  end

  api :GET, '/v1/jobs/:id', 'Get a specify job'
  def show
    job = Job.find_by(id: params[:id])
    render json: {
      job: job
    }
  end

  api :GET, '/v1/jobs/:id/increase-view', 'Increase job view'
  def increase_view
    job = Job.find_by_id(params[:id])
    job.views += 1
    job.save
    render json: {
      job_id: job.id,
      success: true,
      views: job.views
    },
           status: 200
  end

  api :POST, '/v1/jobs', 'Create a new job'
  def create
    user = User.find_by_id(params[:user_id])
    job = Job.new
    job[:user_id] = params[:user_id]
    job[:title] = params[:title]
    job[:category] = params[:category]
    job[:description] = params[:description]
    job[:salary] = params[:salary]
    job[:salary_type] = params[:salaryType]
    job[:salary_state] = params[:salaryState]
    job[:city] = params[:city]
    job[:company_name] = user.company_name
    job[:job_type] = if params[:button_is_submited] == 'Preview'
                       'preview'
                     else
                       'pending'
                     end
    if job.save
      render json: job, status: :created
    else
      render json: job.errors, status: :unprocessable_entity
    end
  end

  api :PUT, '/v1/jobs/:id', 'Update job with specify id'
  def update
    job = Job.find_by_id(params[:id])
    job[:title] = params[:title]
    job[:category] = params[:category]
    job[:description] = params[:description]
    job[:salary] = params[:salary]
    job[:salary_type] = params[:salaryType]
    job[:salary_state] = params[:salaryState]
    job[:city] = params[:city]
    if job.save
      render json: job, status: :created
    else
      render json: job.errors, status: :unprocessable_entity
    end
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
