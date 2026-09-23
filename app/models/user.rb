class User < ApplicationRecord
  has_secure_password

  enum :status, { active: 'active', deactivated: 'deactivated' }

  before_validation :normalize_email

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
            uniqueness: { case_sensitive: false },
            presence: true
  validates :password_digest, length: { minimum: 9 }, allow_nil: true
  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: %w(active deactivated) }


  private

  def normalize_email
    self.email = email.to_s.strip.downcase
  end
end