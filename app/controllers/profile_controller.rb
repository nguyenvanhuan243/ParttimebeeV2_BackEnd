class ProfileController < ApplicationController
  helper_method :generate_otp_code

  def generate_otp_code
    otp_code = OtpCode.new
    totp = ROTP::TOTP.new("base32secret3232")
    code = totp.now
    otp_code.user_id = current_user.id if current_user
    otp_code.otp_code_string = code
    otp_code.save
    return code 
  end
  
  def change_password
    if params[:changepassword][:password].length < 6 || params[:changepassword][:password_confirm].length < 6
      flash[:validate_password] = 'Password minimum 6 characters.'
    else
      if params[:changepassword][:password] != params[:changepassword][:password_confirm]
        flash[:validate_password] = 'Make sure they match!'
      else
        if current_user.password == Digest::MD5.hexdigest(params[:changepassword][:password_current])
          current_user.password = Digest::MD5.hexdigest(params[:changepassword][:password])
          flash[:change_password_success] = 'Change password successfully'
          current_user.save
        end
      end 
    end
    redirect_to :back
  end

  def edit_profile
    profile_user(Profile.where(user_id: session[:user_id]).first)
  end

  def profile_user (profile)
  	@profile = profile
  	@profile[:user_id]  					      = current_user[:id]
  	@profile[:company_name] 			      = params[:editprofile][:companyname]
  	@profile[:company_name] 			      = params[:editprofile][:companyname]
  	@profile[:company_address1] 	      = params[:editprofile][:companyaddress1]
  	@profile[:company_address2] 	      = params[:editprofile][:companyaddress2]
    if params[:editprofile][:companylogo] != nil
      @profile.company_logo               = params[:editprofile][:companylogo]
    end
  	@profile[:company_bio] 				      = params[:editprofile][:companybio]
  	@profile[:name_of_person_in_charge]	= params[:editprofile][:nameofpersonincharge]
  	@profile[:contact_mobile]			      = params[:editprofile][:contactmobile]
  	@profile[:fixed_line_no]			      = params[:editprofile][:fixedlineno]
  	@profile[:company_email]			      = params[:editprofile][:companyemail]
    current_user.email = params[:editprofile][:companyemail]
    current_user.phone_number  = params[:editprofile][:contact_mobile]
    current_user.save
  	@profile.save
  	redirect_to :back
  end
end
