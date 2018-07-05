class Api::V1::FeedbacksController < ApplicationController
  skip_before_filter :verify_authenticity_token


  api :POST, '/v1/feedbacks', 'Create a new feedback'
  def create
    feedback = Feedback.new
    feedback.user_id = params[:user_id]
    feedback.reason = params[:reason]
    feedback.text = params[:text]
    if feedback.save
      render json: {
        success: true
      }, status: 200
    else
      render json: {
        success: false
      }, status: 401
    end
  end

  private
  # Strong parameters
  def feedbacks_params
    params.permit(:report_type, :job_id)
  end
end