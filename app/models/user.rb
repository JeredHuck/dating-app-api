class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }

  validates :email, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }, 
  format: { with: URI::MailTo::EMAIL_REGEXP }

  has_one :profile, dependent: :destroy
  has_one :location, as: :locationable, dependent: :destroy
  
  private
  def validate_username
    unless username =~ /\A[a-zA-Z0-9_]+\Z/
      errors.add(:username, "Can only contain letters, numbers, and underscores, and must contain at least one letter or number.")
    end
  end
end