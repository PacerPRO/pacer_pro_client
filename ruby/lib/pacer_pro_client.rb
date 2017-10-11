=begin
#PacerPro

#PacerPro API documentation.

OpenAPI spec version: 0.5.0
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

# Common files
require 'pacer_pro_client/api_client'
require 'pacer_pro_client/api_error'
require 'pacer_pro_client/version'
require 'pacer_pro_client/configuration'

# Models
require 'pacer_pro_client/models/attorney'
require 'pacer_pro_client/models/case_event'
require 'pacer_pro_client/models/docket_entry'
require 'pacer_pro_client/models/document'
require 'pacer_pro_client/models/empty'
require 'pacer_pro_client/models/error'
require 'pacer_pro_client/models/firm'
require 'pacer_pro_client/models/inline_response_200'
require 'pacer_pro_client/models/matter'
require 'pacer_pro_client/models/model_case'
require 'pacer_pro_client/models/party'
require 'pacer_pro_client/models/session'
require 'pacer_pro_client/models/user'

# APIs
require 'pacer_pro_client/api/authentication_api'
require 'pacer_pro_client/api/case_events_api'
require 'pacer_pro_client/api/cases_api'
require 'pacer_pro_client/api/documents_api'
require 'pacer_pro_client/api/matters_api'

module PacerProClient
  class << self
    # Customize default settings for the SDK using block.
    #   PacerProClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
