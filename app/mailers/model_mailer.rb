class ModelMailer < ApplicationMailer

# Email verification
  def email_verification(user)
    @user = user
  	mail to: @user.email, subject: 'Verification Email from parttimebee.'
  end

# Notify email for employer and parttimer.
  def wellcome_register(user)
    @user = user
    mail to: @user.email, subject: 'Welcome to parttimebee!'
  end

# Notify for employer when parttimer apply job
  def notify_employer_parttimer_apply_job(employer, parttimer, job)
    @parttimer = parttimer
    @job = job
    @employer = employer
    mail to: @employer.email, subject: 'Parttimer Apply Your Job!'
  end

# Notify for parttimer when parttimer apply job from employer
  def notify_parttimer_apply_job_from_employer(parttimer, job)
    @job = job
    @parttimer = parttimer
    mail to: @parttimer.email, subject: 'Parttimer Apply Job From Employer!'
  end

# When employer award a job offer to a part-timer
  def employer_awarded_for_parttimer(employer, applied)
    @employer = employer
    @applied = applied
    mail to: @employer.email, subject: 'Employer awarded job for parttimer'
  end

# When parttimer awarded job from employer
  def parttimer_awarded_job_from_employer(parttimer, applied)
    @parttimer = parttimer
    @applied = applied
    mail to: @parttimer.email, subject: 'Parttimer was awarded from employer'
  end

# When employer post a new job
  def employer_post_new_job(employer, job)
    @employer = employer
    @job = job
    mail to: @employer.email, subject: 'Employer post a new job'
  end

# Parameters employer and job can use in view email
  def employer_cancel_job(employer, job)
    @job = job
    @employer = employer 
    mail to: @employer.email, subject: 'Employer Cancel job'
  end

# Password reset
  def password_reset(user)
    @user = user
    mail :to => user.email, subject: 'Password Reset'
  end

end
