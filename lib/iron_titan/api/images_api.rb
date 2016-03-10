=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module IronTitan
  class ImagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get all image names.
    # TODO: Using images for lack of a better term. See https://github.com/iron-io/titan/issues/43 for discussion.
    # @param [Hash] opts the optional parameters
    # @return [ImagesWrapper]
    def images_get(opts = {})
      data, status_code, headers = images_get_with_http_info(opts)
      return data
    end

    # Get all image names.
    # TODO: Using images for lack of a better term. See https://github.com/iron-io/titan/issues/43 for discussion.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImagesWrapper, Fixnum, Hash)>] ImagesWrapper data, response status code and response headers
    def images_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ImagesApi#images_get ..."
      end
      
      # resource path
      local_var_path = "/images".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImagesWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#images_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get image by name.
    # NOT IMPLEMENTED YET. This gives more details about on image, such as statistics and what not.
    # @param name Name of the image.
    # @param [Hash] opts the optional parameters
    # @return [ImageWrapper]
    def images_name_get(name, opts = {})
      data, status_code, headers = images_name_get_with_http_info(name, opts)
      return data
    end

    # Get image by name.
    # NOT IMPLEMENTED YET. This gives more details about on image, such as statistics and what not.
    # @param name Name of the image.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ImageWrapper, Fixnum, Hash)>] ImageWrapper data, response status code and response headers
    def images_name_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ImagesApi#images_name_get ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling images_name_get" if name.nil?
      
      # resource path
      local_var_path = "/images/{name}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ImageWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImagesApi#images_name_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
