class Api::V1::DisposableEmailController < ApplicationController
  skip_before_filter :verify_authenticity_token    

  def_param_group :user do
    param :email, String, "Email of the user", :required => true
  end

  api :POST, '/v1/disposable-email/check', 'Check email is included in disposable email list'
  def check_disposable_email
    email = email_params
  end

  private
  def email_params
    params.permit(:email)
  end
end