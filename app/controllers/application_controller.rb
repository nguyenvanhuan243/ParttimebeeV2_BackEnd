class ApplicationController < ActionController::Base
  require 'csv'
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :job
  helper_method :check_job_expired
  helper_method :check_job_completed
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def job
    job = Job.find(params[:id])
  end

  def delete_jobs
    Job.all.each do |job|
      job.destroy
    end
  end

  def check_job_expired
    quota = Quotajob.first.quota
    Job.all.each do |job|
      if Time.zone.now > job.working_date_to
        job[:type_job] = "expired"
        job.save
        break
      else
        if job.awarded_job > quota || job.awarded_job > job.vacancies_start
          job[:type_job] = "expired"
          job.save
          break
        end
      end
    end
  end

  def check_job_completed
    Applied.where(status_job: "awarded").all.each do |awardedjob|
      if Time.zone.now > Job.find(awardedjob.job_id).working_date_to
        awardedjob.status_job = "completed"
        awardedjob.save
      end
    end
  end
end
