FactoryBot.define do
  factory :profile do
    bio { 'I am a user with a profile' }
    profile_picture_url { 'randomurl.com' }
  end
end