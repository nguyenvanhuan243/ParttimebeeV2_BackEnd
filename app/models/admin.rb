class Admin < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true

  validates :password, length: { minimum: 6 }
  validates :token_admin, presence: true, length: { minimum: 10 }

  before_create { generate_token(:auth_token) }

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    AdminMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while Admin.exists?(column => self[column])
  end
end
