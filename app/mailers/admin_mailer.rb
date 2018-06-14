class AdminMailer < ApplicationMailer
  
# Admin reset password
  def password_reset(admin)
    @admin = admin
    mail :to => @admin.email, :subject => 'Confirm reset password'
  end

  def report_job_to_admin(report_content)
    @report_content = report_content
    mail :to => 'parttimebee.my@gmail.com', :subject => 'Report Job Notification'
  end

  def notify_user_delete_account
    mail :to => 'parttimebee.my@gmail.com', :subject => 'User Delete Account'
  end

end
