=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class RefundApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Refund a Capture
    # Include the capture ID in the POST request to refund the captured amount. 
    # @param refund_capture_request 
    # @param id The capture ID. This ID is returned from a previous capture request.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def refund_capture(refund_capture_request, id, opts = {})
      data, _status_code, _headers = refund_capture_with_http_info(refund_capture_request, id, opts)
      return data, _status_code, _headers
    end

    # Refund a Capture
    # Include the capture ID in the POST request to refund the captured amount. 
    # @param refund_capture_request 
    # @param id The capture ID. This ID is returned from a previous capture request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Fixnum, Hash)>] InlineResponse2013 data, response status code and response headers
    def refund_capture_with_http_info(refund_capture_request, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RefundApi.refund_capture ...'
      end
      # verify the required parameter 'refund_capture_request' is set
      if @api_client.config.client_side_validation && refund_capture_request.nil?
        fail ArgumentError, "Missing the required parameter 'refund_capture_request' when calling RefundApi.refund_capture"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RefundApi.refund_capture"
      end
      # resource path
      local_var_path = 'pts/v2/captures/{id}/refunds'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(refund_capture_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2013')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundApi#refund_capture\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Refund a Payment
    # Include the payment ID in the POST request to refund the payment amount. 
    # @param refund_payment_request 
    # @param id The payment ID. This ID is returned from a previous payment request.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2013]
    def refund_payment(refund_payment_request, id, opts = {})
      data, _status_code, _headers = refund_payment_with_http_info(refund_payment_request, id, opts)
      return data, _status_code, _headers
    end

    # Refund a Payment
    # Include the payment ID in the POST request to refund the payment amount. 
    # @param refund_payment_request 
    # @param id The payment ID. This ID is returned from a previous payment request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2013, Fixnum, Hash)>] InlineResponse2013 data, response status code and response headers
    def refund_payment_with_http_info(refund_payment_request, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RefundApi.refund_payment ...'
      end
      # verify the required parameter 'refund_payment_request' is set
      if @api_client.config.client_side_validation && refund_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'refund_payment_request' when calling RefundApi.refund_payment"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RefundApi.refund_payment"
      end
      # resource path
      local_var_path = 'pts/v2/payments/{id}/refunds'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(refund_payment_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2013')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundApi#refund_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end