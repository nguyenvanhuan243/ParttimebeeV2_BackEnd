# Video about how to confirm email to active user 
# Link: https://www.youtube.com/watch?v=EycP9L_x5rE
# Tut validate in rails 
# http://guides.rubyonrails.org/v3.2.13/active_record_validations_callbacks.html
class User < ApplicationRecord
  # validates :email, :presence => true, :uniqueness => true
  # validates :password, length: { in: 6..100 }
  # validates :password, :presence => true
  #2 line code for upload image with paperclip
  has_attached_file :avatar, styles: { medium: "400x400>", thumb: "200x200>" }, default_url: "/images/:style/missing.png"
  # Explicitly do not validate
  do_not_validate_attachment_file_type :avatar
  before_create :confirmation_token  
  before_create { generate_token(:auth_token_reset) }
  has_many :jobs, dependent: :destroy
  has_many :notifications
  has_many :notifications
  validates :email, uniqueness: true

	def self.from_omniauth(auth)
    id_user = User.last.id + 1 
    where(provider: auth.provider, uid: auth.uid, email: auth.info.email).first_or_initialize do |user|
      user.provider         = auth.provider
      user.uid              = auth.uid
      user.id               = id_user
      user.full_name        = auth.info.name
      user.email            = auth.info.email
      user.activated        = 1 
      user.avatar           = process_uri(auth.info.image)
      user.oauth_token      = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def email_activate
    self.email_confirmed = true
    self.confirm_token = nil
    save!(:validate => false)
  end

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    RegisterMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  private
  def confirmation_token
      if self.confirm_token.blank?
          self.confirm_token = SecureRandom.urlsafe_base64.to_s
      end
  end

  def self.process_uri(uri)
    require 'open-uri'
    require 'open_uri_redirections'
    open(uri, :allow_redirections => :safe) do |r|
      r.base_uri.to_s
    end
  end
  # Tutorials For confirmation link 
  #https://coderwall.com/p/u56rra/ruby-on-rails-user-signup-email-confirmation-tutorial
end
