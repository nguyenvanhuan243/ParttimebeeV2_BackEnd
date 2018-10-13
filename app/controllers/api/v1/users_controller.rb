class Api::V1::UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token    
  api :GET, '/v1/users', 'Show users list'
  def index
    render json: User.all
  end

  api :GET, '/v1/users/:id', 'Show specify user'
  def show
    # Why using find_by_id: If not exist record it will return nil.
    # find(id): If not exist record it will raise an exception.
    render json: User.find_by_id(params[:id])
  end

  def_param_group :user do
    param :email, String, "Email of the user", :required => true
    param :password, String, "Password of the user", :required => true
  end

  api :POST, '/v1/users', 'Create a new user'
  param_group :user
  def create
    @user = User.new(user_params)
    @user.default_avatar = UserService.new.get_default_avatar
    @user.password = Digest::MD5.hexdigest(user_params[:password])
    if @user.save
      ModelMailer.email_verification(@user).deliver
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  api :GET, '/v1/users/:id/jobs', 'get jobs'
  def get_jobs
    @user = User.find_by_id(params[:id])
    if @user
      render json: @user.jobs
    else 
      render json: nil 
    end
  end

  api :POST, '/v1/users/reset-password', 'Send email to reset password'
  def send_email_reset_password
    user = User.find_by_email(user_params[:email])
    user.send_password_reset
  end

  api :DELETE, '/v1/users/:id', 'Delete a user from User table'
  def destroy
    user = User.find_by_id(params[:id])
    feedback = user.feedbacks.last
    if user
      AdminMailer.notify_user_delete_account(feedback).deliver
      user.destroy
      render json: {
        success: true,
      }, status: 200
    else
      render json: {
        success: false,
        message: 'Cant delete user from parttimebee'
      }, status: 401
    end
  end

  api :PUT, '/v1/users/:id', 'Update user profile'
  def update
    user = User.find_by_id(params[:id])
    jobs = user.jobs
    jobs.each do |job|
      job.company_name = params[:profile][:companyName]
      job.save
    end
    if !params[:profile][:password].nil? && !params[:profile][:confirmPassword].nil?
      new_password = Digest::MD5.hexdigest(params[:profile][:password])
      confirm_password = Digest::MD5.hexdigest(params[:profile][:confirmPassword])
      user.password = confirm_password
      user.confirm_password = params[:profile][:confirmPassword]
    end
    user.email = params[:profile][:email]
    user.contact_name = params[:profile][:contactName]
    user.company_name = params[:profile][:companyName]
    user.address = params[:profile][:address]
    user.phone_number = params[:profile][:phone]
    user.website = params[:profile][:website]
    user.company_description = params[:profile][:companyDescription]
    if params[:profile][:avatar] != 'undefined'
      user.avatar = params[:profile][:avatar]
      user.url_avatar = request.base_url + user.avatar.url(:medium)
    end
    if user.save
      render json: {
        success: true
      }, status: 200
    end
  end

  api :PUT, '/v1/users/update-password', 'Update password user'
  def update_password
    user = User.find_by_password_reset_token(params[:token])
    user.password = Digest::MD5.hexdigest(params[:newPassword])
    if user.save
      RegisterMailer.password_updated(user).deliver
      render json: {
        success: true,
        user: user
      }, status: 200
    else
      render json: {
        success: false
      }
    end
  end

  api :POST, '/v1/users/check-user-exist', 'Check user exist in database with email'
  def check_user_exist
    user = User.where(email: params[:email]).first
    if user.present?
      render json: {
        success: true,
        status: 200,
        user: user
      }
    else
      render json: {
        success: false,
        status: 404
      }
    end
  end

  api :POST, '/v1/users/check-user-password', 'Check user password'
  def check_user_password
    user = User.find_by_email(params[:email]) 
    password = Digest::MD5.hexdigest(params[:password])
    if user.present?
      if user.password == password
        render json: {
          success: true
        }
      else
        render json: {
          success: false
        }
      end
    end
  end

  api :POST, '/v1/users/check-current-password', 'Check current password correct or not'
  def check_current_password
    render json: User.find_by_password(Digest::MD5.hexdigest(params[:currentPassword])).present?
  end

  api :POST, 'v1/users/show-user-with-job-id', 'Show user info with job id'
  def show_user_with_job_id
    job = Job.find_by_id(params[:jobId])
    if job.present?
      user = job.user
      render json: {
        success: true,
        url_avatar: user.url_avatar,
        default_avatar: user.default_avatar
      }
    else
      render json: {
        success: false,
        message: "Can't find user with job id = #{params[:jobId]}",
        status: :unprocessable_entity
      }
    end
  end

  private
  def user_params
    params.permit(:email, :password, :avatar)
  end
end