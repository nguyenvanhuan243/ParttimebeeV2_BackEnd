class Search < ApplicationRecord
  # IF the same salary then real employer will priority 
  def self.sort_employer_real_and_not_real (job_active_record)
    @job_active_record = job_active_record
    @job_active_record.each do |job|
      if job.employer_real == false
        a = Job.where(salary: job.salary, employer_real: true).first
        unless a.nil?
         job, a = a, job
         job.save
        end
      end
    end
  end

end
