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

# Unit tests for PacerProClient::MattersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MattersApi' do
  before do
    # run before each test
    @instance = PacerProClient::MattersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MattersApi' do
    it 'should create an instact of MattersApi' do
      expect(@instance).to be_instance_of(PacerProClient::MattersApi)
    end
  end

  # unit tests for matters_get
  # 
  # 
  # @param authorization The header must look like: \&quot;Authorization: Bearer {...jwtToken...}\&quot;
  # @param [Hash] opts the optional parameters
  # @return [Matters]
  describe 'matters_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for matters_matter_id_get
  # 
  # 
  # @param matter_id The database identifier of the matter.
  # @param authorization The header must look like: \&quot;Authorization: Bearer {...jwtToken...}\&quot;
  # @param [Hash] opts the optional parameters
  # @return [Matter]
  describe 'matters_matter_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end