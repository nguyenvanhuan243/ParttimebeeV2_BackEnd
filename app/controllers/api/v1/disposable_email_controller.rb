class Api::V1::DisposableEmailController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def_param_group :user do
    param :email, String, 'Email of the user', required: true
  end

  api :POST, '/v1/disposable-email/check', 'Check email is included in disposable email list'
  def check_disposable_email
    index = disposable_email_params[:email].index('@') + 1
    email = disposable_email_params[:email][index..-1]
    if Disposableemail.find_by(email: email).present?
      render json: { status: 200, success: true }
    else
      render json: { status: 404, success: false }
    end
  end

  private

  def disposable_email_params
    params.permit(:email)
  end
end
