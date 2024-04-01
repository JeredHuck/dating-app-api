require 'rails_helper'

RSpec.describe Profile, type: :model do
  context 'with valid attributes' do
    it 'is valid' do
      profile = Profile.new(bio: 'I am a user with a profile', profile_picture_url: 'randomurl.com')
      expect(profile).to be_valid
    end

    context 'with invalid attributes' do
      it 'is invalid without a bio' do
        profile = profile.new(profile_picture_url: 'randomurl.com')
        expect(profile).to be_invalid
      end
    end
  end
end