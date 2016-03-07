=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.0.8

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module IronTitan
  class CoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Gets job by id
    # Gets a job by id.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def job_id_get(id, opts = {})
      data, status_code, headers = job_id_get_with_http_info(id, opts)
      return data
    end

    # Gets job by id
    # Gets a job by id.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def job_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#job_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_get" if id.nil?
      
      # resource path
      local_var_path = "/job/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoreApi#job_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a job
    # Typically used to update status on error/completion. TODO: only allow &#39;status&#39; field.
    # @param id Job id
    # @param body Job data to post
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def job_id_patch(id, body, opts = {})
      data, status_code, headers = job_id_patch_with_http_info(id, body, opts)
      return data
    end

    # Update a job
    # Typically used to update status on error/completion. TODO: only allow &#39;status&#39; field.
    # @param id Job id
    # @param body Job data to post
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def job_id_patch_with_http_info(id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#job_id_patch ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling job_id_patch" if id.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling job_id_patch" if body.nil?
      
      # resource path
      local_var_path = "/job/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoreApi#job_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get next job.
    # Gets the next job in the queue, ready for processing.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :n Number of jobs to return.
    # @return [JobArray]
    def jobs_get(opts = {})
      data, status_code, headers = jobs_get_with_http_info(opts)
      return data
    end

    # Get next job.
    # Gets the next job in the queue, ready for processing.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :n Number of jobs to return.
    # @return [Array<(JobArray, Fixnum, Hash)>] JobArray data, response status code and response headers
    def jobs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#jobs_get ..."
      end
      
      # resource path
      local_var_path = "/jobs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'n'] = opts[:'n'] if opts[:'n']

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
        :return_type => 'JobArray')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoreApi#jobs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enqueue Job
    # Enqueues a job.
    # @param body Array of jobs to post.
    # @param [Hash] opts the optional parameters
    # @return [JobArray]
    def jobs_post(body, opts = {})
      data, status_code, headers = jobs_post_with_http_info(body, opts)
      return data
    end

    # Enqueue Job
    # Enqueues a job.
    # @param body Array of jobs to post.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobArray, Fixnum, Hash)>] JobArray data, response status code and response headers
    def jobs_post_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CoreApi#jobs_post ..."
      end
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling jobs_post" if body.nil?
      
      # resource path
      local_var_path = "/jobs".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(body)
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobArray')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CoreApi#jobs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
