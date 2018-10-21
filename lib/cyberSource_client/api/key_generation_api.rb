=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class KeyGenerationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate Key
    # Generate a one-time use public key and key ID to encrypt the card number in the follow-on Tokenize Card request. The key used to encrypt the card number on the cardholder’s device or browser is valid for 15 minutes and must be used to verify the signature in the response message. CyberSource recommends creating a new key for each order. Generating a key is an authenticated request initiated from your servers, prior to requesting to tokenize the card data from your customer’s device or browser.
    # @param generate_public_key_request 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def generate_public_key(generate_public_key_request, opts = {})
      data, _status_code, _headers = generate_public_key_with_http_info(generate_public_key_request, opts)
      data
    end

    # Generate Key
    # Generate a one-time use public key and key ID to encrypt the card number in the follow-on Tokenize Card request. The key used to encrypt the card number on the cardholder’s device or browser is valid for 15 minutes and must be used to verify the signature in the response message. CyberSource recommends creating a new key for each order. Generating a key is an authenticated request initiated from your servers, prior to requesting to tokenize the card data from your customer’s device or browser.
    # @param generate_public_key_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def generate_public_key_with_http_info(generate_public_key_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeyGenerationApi.generate_public_key ...'
      end
      # verify the required parameter 'generate_public_key_request' is set
      if @api_client.config.client_side_validation && generate_public_key_request.nil?
        fail ArgumentError, "Missing the required parameter 'generate_public_key_request' when calling KeyGenerationApi.generate_public_key"
      end
      # resource path
      local_var_path = 'flex/v1/keys'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(generate_public_key_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeyGenerationApi#generate_public_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end