=begin
#PacerPro

#PacerPro API documentation.

OpenAPI spec version: 0.2.1
Contact: ken@pacerpro.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'
require 'jwt'

# Unit tests for PacerProClient::AuthenticationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthenticationApi' do
  UUID_REGEX = /^[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/i

  before do
    uri = URI.parse(ENV.fetch('API_GATEWAY_URL'))
    PacerProClient.configure do |config|
      config.host = uri.host
      config.base_path = uri.path
    end

    @instance = PacerProClient::AuthenticationApi.new
  end

  let(:user_session) {
    user = PacerProClient::User.new(email: ENV.fetch('EMAIL'), password: ENV.fetch('PASSWORD'))
    @instance.session_create(user)
  }

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationApi' do
    it 'should create an instance of AuthenticationApi' do
      expect(@instance).to be_instance_of(PacerProClient::AuthenticationApi)
    end
  end

  # unit tests for session_create
  # Initial authentication.
  # Use this call to generate an authorization token for use in future calls. Provide your PacerPro credentials (email &amp; password) in the User object. You will get a Session object in return.
  # @param user User credentials
  # @param [Hash] opts the optional parameters
  # @return [Session]
  describe 'session_create test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for session_delete
  # Revoke all JWT tokens (logout).
  # Revoke JWT tokens by spinning a new JTI. All current tokens will no longer work.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer {...JSON Web Token...}
  # @return [Empty]
  describe 'session_delete test' do
    it "should work" do
      PacerProClient.configure do |config|
        config.api_key['Authorization'] = user_session.jwt_token
      end
      empty = @instance.session_delete()
      expect(empty).to be_instance_of(PacerProClient::Empty)

      expect { @instance.session_refresh() }.to raise_error(PacerProClient::ApiError, 'Unauthorized')
    end
  end

  # unit tests for session_refresh
  # Refresh authentication token
  # Using a valid auth token, you can use this to refresh it, thus extending the time unti it expires. See POST /session for instructions on the initial authentication.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Bearer {...JSON Web Token...}
  # @return [Session]
  describe 'session_refresh test' do
    it "should work" do
      PacerProClient.configure do |config|
        config.api_key['Authorization'] = user_session.jwt_token
      end
      session = @instance.session_refresh()
      expect(session).to be_instance_of(PacerProClient::Session)
      expect(jwt = JWT.decode(session.jwt_token, ENV.fetch('JWT_KEY')))
        .to match([{"jti"=>UUID_REGEX, "sub"=>1, "exp"=>a_kind_of(Fixnum), "scp"=>"user"}, {"typ"=>"JWT", "alg"=>"HS256"}])
    end

    it "should raise an error if the token has expired" do
      PacerProClient.configure do |config|
        config.api_key['Authorization'] = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJjMGI1MDdhNy0yNzE2LTRmM2UtYWY2YS00NmIyNmZkYzI0ZTIiLCJzdWIiOjEsImV4cCI6MTUwMDMzNDk5Mywic2NwIjoidXNlciJ9.LqI24QLa1bSG332KL10Xb4kZ2NOGolzZCyaKI33oBNg'
      end

      expect { @instance.session_refresh }.to raise_error(PacerProClient::ApiError, 'Unauthorized')
    end
  end

  # unit tests for session_create
  # Initial authentication.
  # Use this call to generate an authorization token for use in future calls. Provide your PacerPro credentials (email &amp; password) in the User object. You will get a Session object in return.
  # @param user User credentials
  # @param [Hash] opts the optional parameters
  # @return [Session]
  describe 'session_create test' do
    it "should work" do
      user = PacerProClient::User.new(email: ENV.fetch('EMAIL'), password: ENV.fetch('PASSWORD'))
      session = @instance.session_create(user)
      expect(session).to be_instance_of(PacerProClient::Session)
      expect(jwt = JWT.decode(session.jwt_token, ENV.fetch('JWT_KEY')))
        .to match([{"jti"=>UUID_REGEX, "sub"=>1, "exp"=>a_kind_of(Fixnum), "scp"=>"user"}, {"typ"=>"JWT", "alg"=>"HS256"}])
    end

    it "should fail with bad credentials" do
      user = PacerProClient::User.new
      expect { session = @instance.session_create(user) }.to raise_error(PacerProClient::ApiError, 'Unauthorized')
    end
  end

end
