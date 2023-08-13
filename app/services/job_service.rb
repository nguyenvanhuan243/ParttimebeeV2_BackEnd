class JobService
  def set_expire_job_time
    admin = Admin.first
    expire_job_time = admin.expire_job_time
    unless expire_job_time.zero?
      going_pending_jobs = Job.where.not(job_type: 'expired')
      going_pending_jobs.each do |job|
        if (Time.current - job.created_at).to_i / 86_400 > expire_job_time
          job.job_type = 'expired'
          job.save
        end
      end
    end
  end
end
