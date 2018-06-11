class AdminMailer < ApplicationMailer
  
# Admin reset password
  def password_reset(admin)
    @admin = admin
    mail :to => @admin.email, :subject => 'Confirm reset password'
  end

  def report_job_to_admin
    mail :to => 'parttimebee.my@gmail.com', :subject => 'Report Job Notification'
  end

end
