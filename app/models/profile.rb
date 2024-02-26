class Profile < ApplicationRecord
  vaildates :bio, length: {maximum: 2000}
  belongs_to :user
end