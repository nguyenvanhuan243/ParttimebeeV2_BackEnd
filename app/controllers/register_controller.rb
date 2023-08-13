class RegisterController < ApplicationController
  def new
    user = User.new
    user.full_name = params[:register][:name]
    user.email = params[:register][:email]
    @index = params[:register][:email].index('@') + 1
    get_email = params[:register][:email][@index..-1]
    if Disposableemail.where(email: get_email).count.positive?
      flash[:email_disposable] = 'You cant use this email to register.'
      redirect_to :back
      return
    end
    if params[:register][:password].length < 6
      flash[:email_disposable] = 'Password minimum is 6 characters!'
      redirect_to :back
      return
    end
    user.password = Digest::MD5.hexdigest(params[:register][:password])
    user.type_user = if params[:commit] == 'Sign up as part-timer'
                       'parttimer'
                     else
                       'employer'
                     end
    session[:user_id] = user.id
    User.all.each do |u|
      next unless u.email == user.email
      flash[:register_fail] = 'Your email have already registerd, Please choose other email.'
      redirect_to :back
      return
    end
    user.save
    if user.type_user == 'employer'
      profile = Profile.new
      profile.user_id = user.id
      profile.save
    end
    flash[:notify_created_account] = 'Your account has been created. Please check email'
    ModelMailer.email_verification(user).deliver
    redirect_to :back
  end
end
