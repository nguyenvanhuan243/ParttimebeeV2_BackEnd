class Api::V1::AdminsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  # def_param_group :user do
  #   param :report_type, String, "Type of report", :required => true
  # end

  api :POST, '/v1/admins', 'Send report job to admin'
  def create
    report_content = {
      report_type: params[:report_type],
      job_id: params[:job_id]
    }
    AdminMailer.report_job_to_admin(report_content).deliver
    render json: {
      success: true,
      sent: true
    }, status: :created
  end

  # private
  
  # def admin_params
  #   params.permit(:report_type)
  # end
end