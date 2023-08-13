class AdminController < ApplicationController
  before_action :check_admin

  def check_admin
    redirect_to '/admin-login' if session[:token] != Admin.first.token_admin
  end

  def import_job
    Job.import(params[:import][:file])
    flash[:import_job_successfully] = 'Import job to your database in successfully!'
    redirect_to :back
  end

  def block_and_unblock_user
    user = User.find_by(id: params[:id])
    user.blocked = user.blocked.zero? ? 1 : 0
    user.save
    redirect_to :back
  end

  def add_disposable_email
    email = Disposableemail.create(email: params[:disposable][:email])
    if email.valid?
      email.save
    else
      flash[:add_disposable_email] = 'This domain has already added to your blocking list, add other domain, please!'
    end
    redirect_to :back
  end

  def delete_disposable_email
    Disposableemail.find(params[:id]).destroy
    redirect_to :back
  end

  def delete_user
    user = User.find_by(id: params[:id])
    user.destroy if user.present?
    redirect_to :back
  end

  def delete_category_job
    Category.find(params[:id]).destroy
    redirect_to :back
  end

  def add_category_job
    @category = Category.new
    @category.category_job = params[:categoryjob][:category]
    Category.all.each do |iteam|
      next unless iteam.category_job == params[:categoryjob][:category]
      flash[:add_disposable_email] = 'This Category has been added in your category list!'
      redirect_to :back
      return
    end
    @category.save
    swap_job Category.all
    redirect_to :back
  end

  # Local variable
  # Global variable
  # Instance variable ex: @full_name: just use in a Class
  # Class variable
  # Constant

  # Make sure Others always is last element in array
  def swap_job(category)
    categories = category
    category_last = Category.last
    categories.each do |category|
      next unless category[:category_job] == 'Others'
      category[:category_job] = category_last[:category_job]
      category_last[:category_job] = 'Others'
      category.save
      category_last.save
      break
    end
  end

  def delete_job
    Job.find_by_id(params[:id]).destroy
    redirect_to :back
  end

  def approve_job
    job = Job.find_by_id(params[:id])
    job.job_type = 'going'
    job.save
    redirect_to :back
  end

  def quota_job
    quota = if Quotajob.count.positive?
              Quotajob.first
            else
              Quotajob.new
            end
    flash[:add_quota_job] = 'Add quota job in successfully!'
    quota.quota = params[:quotajob][:quota]
    quota.save
    redirect_to :back
  end

  def update_profile_special_account
    special_account = User.first
    special_account.full_name = params[:fullname]
    special_account.nationality = params[:nationality]
    special_account.url_avatar = params[:avatar] unless params[:avatar].blank?
    special_account.save
  end

  def merge_the_job
    job = Job.find(params[:job_id])
    job.user_id = params[:user_id]
    job.employer_real = true
    job.save
  end

  def set_expire_job_time
    if params[:admin][:expire_job_time].to_i < 1_000_000
      admin = Admin.first
      admin.expire_job_time = params[:admin][:expire_job_time]
      admin.save
    end
    redirect_to :back
  end
end
