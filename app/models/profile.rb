class Profile < ApplicationRecord
  validates :bio, presence: true, length: {maximum: 2000}
  validates :profile_picture_url, presence: true
  belongs_to :user
end