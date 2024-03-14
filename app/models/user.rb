class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 },
                       format: { with: /\A[a-zA-Z0-9_]+\Z/, message: "Can only contain letters, numbers, and underscores, and must contain at least one letter or number."}
  validates :email, presence: true, uniqueness: true, length: { minimum: 3, maximum: 50 }, 
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  has_one :profile, dependent: :destroy
  has_one :location, as: :locatable, dependent: :destroy

  after_create :create_profile

  has_secure_password
  
end