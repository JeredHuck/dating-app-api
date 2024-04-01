require 'rails_helper'

RSpec.describe 'Profiles', type: :request do
  let(:valid_attributes) { { bio: 'I am a user with a profile', profile_picture_url: 'randomurl.com' } }

  describe 'POST /profiles' do
    context 'when the request is valid' do
      it 'creates a new profile' do
        expect {
          post '/profiles', params: { profile: valid_attributes }
        }.to change(Profile, :count).by(1)

        expect(response).to have_http_status(201)
        expect(json['bio']).to eq(valid_attributes[:bio])
        expect(json['profile_picture_url']).to eq(valid_attributes[:profile_picture_url])
      end
    end

    def json
      JSON.parse(response.body)
    rescue JSON::ParseError => e
      raise 'Unable to parse JSON response: #{response.body}'
    end
  end
end