class AppliedController < ApplicationController
	def worker_apply_job
	  job = Job.find(params[:id])
   	applyjob = Applied.new
    employer = User.where(id: job[:user_id]).first
  	applyjob[:parttimer_id] = current_user.id
    applyjob[:employer_id]  = job[:user_id]
    applyjob[:status_job]   = 'applied'
    applyjob[:job_id]       = job[:id]
    applyjob.save
    ModelMailer.notify_employer_parttimer_apply_job(employer, current_user, job).deliver
    ModelMailer.notify_parttimer_apply_job_from_employer(current_user, job).deliver
    redirect_to :back
  end
end
