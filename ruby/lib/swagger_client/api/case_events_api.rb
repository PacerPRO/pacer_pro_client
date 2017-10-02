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

require "uri"

module SwaggerClient
  class CaseEventsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # A collection of case events.
    # Get case events for your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @option opts [String] :retrieved_since Limit results to case events retrieved since the given value.
    # @option opts [String] :limit Limit number of results to the given number.
    # @option opts [String] :page Start results at the given page.
    # @return [Array<CaseEvent>]
    def case_events_get_collection(opts = {})
      data, _status_code, _headers = case_events_get_collection_with_http_info(opts)
      return data
    end

    # A collection of case events.
    # Get case events for your organization.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @option opts [String] :retrieved_since Limit results to case events retrieved since the given value.
    # @option opts [String] :limit Limit number of results to the given number.
    # @option opts [String] :page Start results at the given page.
    # @return [Array<(Array<CaseEvent>, Fixnum, Hash)>] Array<CaseEvent> data, response status code and response headers
    def case_events_get_collection_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CaseEventsApi.case_events_get_collection ..."
      end
      # resource path
      local_var_path = "/case_events".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'retrieved_since'] = opts[:'retrieved_since'] if !opts[:'retrieved_since'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<CaseEvent>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CaseEventsApi#case_events_get_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A single case event.
    # Get a single case event, specified by `caseEventId` in the path.
    # @param case_event_id The database identifier of the case event.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @return [CaseEvent]
    def case_events_get_one(case_event_id, opts = {})
      data, _status_code, _headers = case_events_get_one_with_http_info(case_event_id, opts)
      return data
    end

    # A single case event.
    # Get a single case event, specified by &#x60;caseEventId&#x60; in the path.
    # @param case_event_id The database identifier of the case event.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization Bearer {...JSON Web Token...}
    # @return [Array<(CaseEvent, Fixnum, Hash)>] CaseEvent data, response status code and response headers
    def case_events_get_one_with_http_info(case_event_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CaseEventsApi.case_events_get_one ..."
      end
      # verify the required parameter 'case_event_id' is set
      fail ArgumentError, "Missing the required parameter 'case_event_id' when calling CaseEventsApi.case_events_get_one" if case_event_id.nil?
      # resource path
      local_var_path = "/case_events/{caseEventId}".sub('{format}','json').sub('{' + 'caseEventId' + '}', case_event_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CaseEvent')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CaseEventsApi#case_events_get_one\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end