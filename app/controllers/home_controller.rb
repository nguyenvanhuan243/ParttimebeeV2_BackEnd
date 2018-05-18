class HomeController < ApplicationController
  helper_method :generate_otp_code
  def index
  end

  def generate_otp_code
    otp_code = OtpCode.new
    totp = ROTP::TOTP.new("base32secret3232")
    code = totp.now
    otp_code.user_id = current_user.id if current_user
    otp_code.otp_code_string = code
    otp_code.save
    return code 
  end

  def complete_profile_parttimer
    unless params[:completeprofile][:dayofbirth].blank?
      current_user[:day_of_birth] = Date.strptime(params[:completeprofile][:dayofbirth], '%m/%d/%Y')
    end
    current_user[:nationality]  = params[:nationality]
    current_user[:education] = params[:education]
    unless params[:completeprofile][:avatar].nil?
      current_user.avatar       = params[:completeprofile][:avatar]
    end
    current_user[:race]         = params[:race]
    current_user[:sex]          = params[:radio]
    check_language
    current_user[:complete_profile] = 1
    current_user.save!
    flash[:complete_profile] = 'Completed profile'
    redirect_to :back
  end

  def complete_profile_employer
      @profile = Profile.where(user_id: session[:user_id]).first
      @profile[:company_name]       = params[:completeprofile][:companyname]
      unless params[:completeprofile][:companylogo].nil?
        @profile.company_logo         = params[:completeprofile][:companylogo]
      end
      @profile[:headline]           = params[:completeprofile][:headline]
      @profile[:short_description]  = params[:completeprofile][:description]
      @profile[:company_size]       = params[:companysize]
      @profile[:company_address1]    = params[:completeprofile][:companyaddress]
      @profile[:company_email]      = params[:completeprofile][:companyemail]
      @profile[:company_contact]    = params[:completeprofile][:companycontact]
      @profile[:user_id]            = current_user.id
      current_user[:complete_profile] = 1
      current_user.save!
      flash[:complete_profile] = 'Completed profile'
      @profile.save!
      redirect_to :back
  end

  def verify_phone
    current_user.otp_time +=1
    current_user.save
    if current_user.otp_time == 3
      flash[:supportotp] = 'suppor totp'
      current_user.otp_time = 0
      current_user.save
      redirect_to :back
      return
    end
    phone = User.find_by_phone_number(params[:'phone-number'])
    unless phone.nil?
      flash[:fail_otp] = 'Cant use this phone'
      redirect_to :back
      return
    end
    if OtpCode.where(user_id: session[:user_id]).last.otp_code_string == params[:'otp-code']
      if current_user.type_user == 'employer'
        current_user[:verify_postjob_employer]  = 1
      else
        current_user[:verify_findjob_parttimer] = 1
      end
      current_user.phone_number = params[:'phone-number']
      current_user.save
      redirect_to :back
    end
  end

# When employer award a job offer to a part-timer
  def awarded_job_for_parttimer
    applied = Applied.find(params[:id])
    job = Job.find(applied.job_id)
    job[:vacancies]   -= 1
    job[:awarded_job] += 1
    applied[:status_job] = 'awarded'
    employer = User.find(applied[:employer_id])
    parttimer = User.find(applied[:parttimer_id])
    ModelMailer.parttimer_awarded_job_from_employer(parttimer, applied).deliver
    ModelMailer.employer_awarded_for_parttimer(employer, applied).deliver
    applied.save
    job.save
    redirect_to :back
  end

  def edit_profile_parttimer
    current_user[:full_name]       = params[:editprofile][:fullnameparttimer]
    current_user[:email]           = params[:editprofile][:email]
    current_user[:introduce_yourself]  = params[:editprofile][:introduceyourself]
    if params[:editprofile][:avatar] != nil
      current_user.avatar              = params[:editprofile][:avatar]
    end
    current_user[:preferred_working_location1] = params[:editprofile][:location1]
    current_user[:preferred_working_location2] = params[:editprofile][:location2]
    current_user[:preferred_working_location3] = params[:editprofile][:location3]
    current_user[:sex]               = params[:sex]
    unless params[:editprofile][:dayofbirth].blank?
      current_user[:day_of_birth] = Date.strptime(params[:editprofile][:dayofbirth], '%m/%d/%Y')
    end
    current_user[:working_location]  = params[:workinglocation]
    check_language
    current_user[:education] = params[:education]
    current_user[:race] = params[:race]
    if params[:malaysian] == 'malaysian'
      current_user[:ifmalaysian] = 'yes'
    else
      current_user[:ifmalaysian] = 'no'
    end
    current_user.save
    redirect_to :back
  end

  def check_language  
    if params[:malaysia] == 'malaysia'
      current_user[:bahasa_malaysia ] = 'yes'
    else
      current_user[:bahasa_malaysia ] = 'no'
    end

    if params[:chinese] == 'chinese'
      current_user[:chinese] = 'yes'
    else
      current_user[:chinese] = 'no'
    end

    if params[:english] == 'english'
      current_user[:english] = 'yes'
    else
      current_user[:english] = 'no'
    end

    if params[:tamil] == 'tamil'
      current_user[:tamil] = 'yes'
    else
      current_user[:tamil] = 'no'
    end

    if params[:cantonese] == 'cantonese'
      current_user[:cantonese] = 'yes'
    else
      current_user[:cantonese] = 'no'
    end
    
    if params[:hokkien] == 'hokkien'
      current_user[:hokkien] = 'yes'
    else
      current_user[:hokkien] = 'no'
    end
  end

  def load_more
    $load_more_job = Integer(params[:id]) + 10
    redirect_to :back
  end

end
