class Api::V1::AdminsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def_param_group :admin do
    param :report_type, String, 'This is report type', required: true
    param :job_id, String, 'This is job id', required: true
  end

  api :POST, '/v1/admins', 'Send report job to admin'
  param_group :admin
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

  private

  # Strong parameters.
  def admin_params
    params.permit(:report_type, :job_id)
  end
end
