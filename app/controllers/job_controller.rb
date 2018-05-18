class JobController < ApplicationController
  def index
  end

  def post_job_now
  	job = Job.new
    job[:user_id] = current_user.id
    job[:employer_real] = true
  	action_job(job)
    if params[:save] == 'SaveExit'
      job[:current_tab_active] = params[:job][:activetab]
      job[:type_job] = 'draft'
      job.save
    else
      job[:type_job] = 'published'
      job.save
      ModelMailer.employer_post_new_job(current_user, job).deliver
      notify_employer_post_new_job (current_user)
    end
  	redirect_to '/01-all-jobs-listing?all-jobs'
  end

  #6. When employer post a new job 
  def notify_employer_post_new_job (user)
    @user = user 
    @notification = Notification.new
    @notification[:content] = 'You have just posted a  new job! Keep posting!' 
    @notification[:user_id] = @user[:id]
    @notification[:status] = 'unread'
    @notification.save
  end

# Edit published job and repost job expired
  def edit_published_job
    job = Job.find(params[:id])
    action_job (job)
    job[:type_job] = 'published'
    job.save
    redirect_to '/01-all-jobs-listing?all-jobs'
  end

  def finish_draft_job
    job = Job.find(params[:id])
    action_job (job)
    if params[:save] == 'SaveExit'
      job[:current_tab_active] = params[:job][:activetab]
      job[:type_job] = 'draft'
    else
      job[:type_job] = 'published'
    end
    job.save
    redirect_to '/01-all-jobs-listing?all-jobs'
  end

  def cancel_job
    job = Job.find(params[:id])
    ModelMailer.employer_cancel_job(current_user, job).deliver
    job[:type_job] ='expired'
    job.save
    notify_employer_cancel_job(current_user)
    redirect_to '/01-all-jobs-listing?all-jobs'
  end

# When employer post a new job 
  def notify_employer_cancel_job (user)
    @user                   = user 
    @notification           = Notification.new
    @notification[:content] = 'Oh no! We can’t believe that you cancelled the job!'
    @notification[:user_id] = @user[:id]
    @notification[:status]  = 'unread'
    @notification.save
  end

  def action_job (job)
    @job = job
    @job[:title] = params[:job][:jobtitle]
    @job[:category_job]    = params[:categoryjob]
    @job[:description]     = params[:job][:description]
    @job[:requirements]    = params[:job][:requirement]
    @job[:vacancies]       = params[:job][:vacancies]
    @job[:vacancies_start] = params[:job][:vacancies]
    @job[:availablefor]    = params[:available_for]
    @job[:agefrom]         = params[:age_from] 
    @job[:ageto]           = params[:age_to]
    current_user.full_name = params[:job][:contactperson]
    current_user.phone_number_change = params[:job][:wayofcontact]
    @job[:language_Bahasa_Malaysia] = params[:job][:malaysia]
    @job[:language_Chinese] = params[:job][:chinese]
    @job[:language_English] = params[:job][:english]
    @job[:language_Tamin] = params[:job][:tamin]
    @job[:language_Cantonese] = params[:job][:cantonese]
    @job[:language_Hokkien] = params[:job][:hokkien]
    @job[:salary]             = params[:job][:salary]
    @job[:per_day]            = params[:perday]
    @job[:benefits]           = params[:job][:benefits]
    unless params[:job][:working_date_from].blank?
      @job[:working_date_from] = Date.strptime(params[:job][:working_date_from], '%m/%d/%Y')
    end
    unless params[:job][:working_date_to].blank?
      @job[:working_date_to] = Date.strptime(params[:job][:working_date_to], '%m/%d/%Y')
    end
    @job[:payment] = params[:payment]
    @job[:on_the_spot] = params[:onthespot]
    @job[:commission] = params[:commission]
    @job[:working_hour_from]    = params[:working_hour_from]
    @job[:working_hour_to]      = params[:working_hour_to]
    @job[:working_address]      = params[:job][:workingaddress]
    @job[:working_address2]     = params[:job][:workingaddress2]
    @job[:state]                = params[:state1]
    @job[:city]                 = params[:city1]
    @job[:post_code]            = params[:job][:postcode]
    @job[:working_address3]     = params[:job][:workingaddress3]
    @job[:working_address4]     = params[:job][:workingaddress4]
    @job[:state2]               = params[:state2]
    @job[:city2]                = params[:city2]
    @job[:post_code2]           = params[:job][:postcode2]
    @job[:contact_person]       = params[:job][:contactperson]
    @job[:way_of_contact]       = params[:job][:wayofcontact]
    @job[:email]                = params[:job][:wayofcontact2]
  end

  def click_favorite_job
    favorite = Favoritejob.new
    job = Job.find(params[:id])
    favorite[:parttimer_id] =  current_user.id
    favorite[:employer_id] = job[:user_id]
    favorite[:job_id]      = params[:id]
    favorite.save
    redirect_to :back
  end

  def click_favorite_job_again
    favorite = Favoritejob.where(parttimer_id: current_user.id, job_id: params[:id]).first
    favorite.destroy
    redirect_to :back
  end
end
