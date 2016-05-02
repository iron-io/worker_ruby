=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.3.10

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module IronTitan
  class JobsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get job list by group name.
    # This will list jobs for a particular group.
    # @param name Name of group for this set of jobs.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :created_after Will return jobs created after this time. In RFC3339 format.
    # @option opts [Integer] :n Number of jobs to return.
    # @return [JobsWrapper]
    def groups_name_jobs_get(name, opts = {})
      data, status_code, headers = groups_name_jobs_get_with_http_info(name, opts)
      return data
    end

    # Get job list by group name.
    # This will list jobs for a particular group.
    # @param name Name of group for this set of jobs.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :created_after Will return jobs created after this time. In RFC3339 format.
    # @option opts [Integer] :n Number of jobs to return.
    # @return [Array<(JobsWrapper, Fixnum, Hash)>] JobsWrapper data, response status code and response headers
    def groups_name_jobs_get_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_get ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_get" if name.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

      # query parameters
      query_params = {}
      query_params[:'created_after'] = opts[:'created_after'] if opts[:'created_after']
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
        :return_type => 'JobsWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a job.
    # Cancels a job in delayed, queued or running status. The worker may continue to run a running job. reason is set to `client_request`. The job's completed_at field is set to the current time on the jobserver.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def groups_name_jobs_id_cancel_post(name, id, opts = {})
      data, status_code, headers = groups_name_jobs_id_cancel_post_with_http_info(name, id, opts)
      return data
    end

    # Cancel a job.
    # Cancels a job in delayed, queued or running status. The worker may continue to run a running job. reason is set to `client_request`. The job&#39;s completed_at field is set to the current time on the jobserver.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def groups_name_jobs_id_cancel_post_with_http_info(name, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_cancel_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_cancel_post" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_cancel_post" if id.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}/cancel".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_cancel_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the job.
    # Delete only succeeds if job status is one of `succeeded\n| failed | cancelled`. Cancel a job if it is another state and needs to\nbe deleted.  All information about the job, including the log, is\nirretrievably lost when this is invoked.\n
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def groups_name_jobs_id_delete(name, id, opts = {})
      groups_name_jobs_id_delete_with_http_info(name, id, opts)
      return nil
    end

    # Delete the job.
    # Delete only succeeds if job status is one of `succeeded\n| failed | cancelled`. Cancel a job if it is another state and needs to\nbe deleted.  All information about the job, including the log, is\nirretrievably lost when this is invoked.\n
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def groups_name_jobs_id_delete_with_http_info(name, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_delete ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_delete" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_delete" if id.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark job as failed.
    # Job is marked as failed if it was in a valid state. Job's `finished_at` time is initialized.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def groups_name_jobs_id_error_post(name, id, body, opts = {})
      data, status_code, headers = groups_name_jobs_id_error_post_with_http_info(name, id, body, opts)
      return data
    end

    # Mark job as failed.
    # Job is marked as failed if it was in a valid state. Job&#39;s `finished_at` time is initialized.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def groups_name_jobs_id_error_post_with_http_info(name, id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_error_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_error_post" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_error_post" if id.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling groups_name_jobs_id_error_post" if body.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}/error".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_error_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets job by id
    # Gets a job by id.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def groups_name_jobs_id_get(name, id, opts = {})
      data, status_code, headers = groups_name_jobs_id_get_with_http_info(name, id, opts)
      return data
    end

    # Gets job by id
    # Gets a job by id.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def groups_name_jobs_id_get_with_http_info(name, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_get ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_get" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_get" if id.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the log of a completed job.
    # Retrieves the log from log storage.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def groups_name_jobs_id_log_get(name, id, opts = {})
      data, status_code, headers = groups_name_jobs_id_log_get_with_http_info(name, id, opts)
      return data
    end

    # Get the log of a completed job.
    # Retrieves the log from log storage.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def groups_name_jobs_id_log_get_with_http_info(name, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_log_get ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_log_get" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_log_get" if id.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}/log".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['text/plain']
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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_log_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send in a log for storage.
    # Logs are sent after a job completes since they may be very large and the runner can process the next job.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def groups_name_jobs_id_log_post(name, id, log, opts = {})
      data, status_code, headers = groups_name_jobs_id_log_post_with_http_info(name, id, log, opts)
      return data
    end

    # Send in a log for storage.
    # Logs are sent after a job completes since they may be very large and the runner can process the next job.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset=utf-8\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def groups_name_jobs_id_log_post_with_http_info(name, id, log, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_log_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_log_post" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_log_post" if id.nil?
      
      # verify the required parameter 'log' is set
      fail "Missing the required parameter 'log' when calling groups_name_jobs_id_log_post" if log.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}/log".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['multipart/form-data']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}
      form_params["log"] = log

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_log_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retry a job.
    # \"The /retry endpoint can be used to force a retry of jobs\nwith status succeeded or cancelled. It can also be used to retry jobs\nthat in the failed state, but whose max_retries field is 0. The retried\njob will continue to have max_retries = 0.\"\n
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def groups_name_jobs_id_retry_post(name, id, opts = {})
      data, status_code, headers = groups_name_jobs_id_retry_post_with_http_info(name, id, opts)
      return data
    end

    # Retry a job.
    # \&quot;The /retry endpoint can be used to force a retry of jobs\nwith status succeeded or cancelled. It can also be used to retry jobs\nthat in the failed state, but whose max_retries field is 0. The retried\njob will continue to have max_retries = 0.\&quot;\n
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def groups_name_jobs_id_retry_post_with_http_info(name, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_retry_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_retry_post" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_retry_post" if id.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}/retry".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_retry_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark job as started, ie: status = 'running'
    # Job status is changed to 'running' if it was in a valid state before. Job's `started_at` time is initialized.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def groups_name_jobs_id_start_post(name, id, body, opts = {})
      data, status_code, headers = groups_name_jobs_id_start_post_with_http_info(name, id, body, opts)
      return data
    end

    # Mark job as started, ie: status = &#39;running&#39;
    # Job status is changed to &#39;running&#39; if it was in a valid state before. Job&#39;s `started_at` time is initialized.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def groups_name_jobs_id_start_post_with_http_info(name, id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_start_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_start_post" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_start_post" if id.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling groups_name_jobs_id_start_post" if body.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}/start".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_start_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Mark job as succeeded.
    # Job status is changed to succeeded if it was in a valid state before. Job's `completed_at` time is initialized.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [JobWrapper]
    def groups_name_jobs_id_success_post(name, id, body, opts = {})
      data, status_code, headers = groups_name_jobs_id_success_post_with_http_info(name, id, body, opts)
      return data
    end

    # Mark job as succeeded.
    # Job status is changed to succeeded if it was in a valid state before. Job&#39;s `completed_at` time is initialized.
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobWrapper, Fixnum, Hash)>] JobWrapper data, response status code and response headers
    def groups_name_jobs_id_success_post_with_http_info(name, id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_success_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_success_post" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_success_post" if id.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling groups_name_jobs_id_success_post" if body.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}/success".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'JobWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_success_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Extend job timeout.
    # Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image.\nIf the timeout is small, the job may never get to run, or run but not be accepted by Titan. Consumers can touch the job before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the job.\nTouch is only valid while the job is in a running state. If touch fails, the runner may stop running the job.\n
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def groups_name_jobs_id_touch_post(name, id, opts = {})
      groups_name_jobs_id_touch_post_with_http_info(name, id, opts)
      return nil
    end

    # Extend job timeout.
    # Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image.\nIf the timeout is small, the job may never get to run, or run but not be accepted by Titan. Consumers can touch the job before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the job.\nTouch is only valid while the job is in a running state. If touch fails, the runner may stop running the job.\n
    # @param name Name of group for this set of jobs.
    # @param id Job id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def groups_name_jobs_id_touch_post_with_http_info(name, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_id_touch_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_id_touch_post" if name.nil?
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling groups_name_jobs_id_touch_post" if id.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs/{id}/touch".sub('{format}','json').sub('{' + 'name' + '}', name.to_s).sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_id_touch_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enqueue Job
    # Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued.\n
    # @param name name of the group.
    # @param body Array of jobs to post.
    # @param [Hash] opts the optional parameters
    # @return [JobsWrapper]
    def groups_name_jobs_post(name, body, opts = {})
      data, status_code, headers = groups_name_jobs_post_with_http_info(name, body, opts)
      return data
    end

    # Enqueue Job
    # Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued.\n
    # @param name name of the group.
    # @param body Array of jobs to post.
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobsWrapper, Fixnum, Hash)>] JobsWrapper data, response status code and response headers
    def groups_name_jobs_post_with_http_info(name, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#groups_name_jobs_post ..."
      end
      
      # verify the required parameter 'name' is set
      fail "Missing the required parameter 'name' when calling groups_name_jobs_post" if name.nil?
      
      # verify the required parameter 'body' is set
      fail "Missing the required parameter 'body' when calling groups_name_jobs_post" if body.nil?
      
      # resource path
      local_var_path = "/groups/{name}/jobs".sub('{format}','json').sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'JobsWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#groups_name_jobs_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get next job.
    # Gets the next job in the queue, ready for processing. Titan may return <=n jobs. Consumers should start processing jobs in order. Each returned job is set to `status` \"running\" and `started_at` is set to the current time. No other consumer can retrieve this job.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :n Number of jobs to return. (default to 1)
    # @return [JobsWrapper]
    def jobs_get(opts = {})
      data, status_code, headers = jobs_get_with_http_info(opts)
      return data
    end

    # Get next job.
    # Gets the next job in the queue, ready for processing. Titan may return &lt;=n jobs. Consumers should start processing jobs in order. Each returned job is set to `status` \&quot;running\&quot; and `started_at` is set to the current time. No other consumer can retrieve this job.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :n Number of jobs to return.
    # @return [Array<(JobsWrapper, Fixnum, Hash)>] JobsWrapper data, response status code and response headers
    def jobs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: JobsApi#jobs_get ..."
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
        :return_type => 'JobsWrapper')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobsApi#jobs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
