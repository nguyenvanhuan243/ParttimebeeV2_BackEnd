class Favoritejob < ApplicationRecord
  belongs_to :jobs

  def self.remove_favorite_job
  	Job.all.each do |job|
  		if job.type_job == 'expired'
  			Favoritejob.where(job_id: job.id).delete_all
  		end
  	end
  end
end
