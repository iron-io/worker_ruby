=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.4.9

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

# Unit tests for IronTitan::JobsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'JobsApi' do
  before do
    # run before each test
    @instance = IronTitan::JobsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobsApi' do
    it 'should create an instact of JobsApi' do
      expect(@instance).to be_instance_of(IronTitan::JobsApi)
    end
  end

  # unit tests for groups_name_jobs_get
  # Get job list by group name.
  # This will list jobs for a particular group.
  # @param name Name of group for this set of jobs.
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :created_after Will return jobs created after this time. In RFC3339 format.
  # @option opts [Integer] :n Number of jobs to return per page. Default is 50. Max is 1000.
  # @option opts [String] :cursor Pass this in from a previous query to paginate results.
  # @return [JobsWrapper]
  describe 'groups_name_jobs_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_cancel_post
  # Cancel a job.
  # Cancels a job in delayed, queued or running status. The worker may continue to run a running job. reason is set to &#x60;client_request&#x60;. The job&#39;s completed_at field is set to the current time on the jobserver.
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_name_jobs_id_cancel_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_delete
  # Delete the job.
  # Delete only succeeds if job status is one of &#x60;succeeded | failed | cancelled&#x60;. Cancel a job if it is another state and needs to be deleted.  All information about the job, including the log, is irretrievably lost when this is invoked. 
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'groups_name_jobs_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_error_post
  # Mark job as failed.
  # Job is marked as failed if it was in a valid state. Job&#39;s &#x60;finished_at&#x60; time is initialized.
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_name_jobs_id_error_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_get
  # Gets job by id
  # Gets a job by id.
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_name_jobs_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_log_get
  # Get the log of a completed job.
  # Retrieves the log from log storage.
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'groups_name_jobs_id_log_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_log_post
  # Send in a log for storage.
  # Logs are sent after a job completes since they may be very large and the runner can process the next job.
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param log Output log for the job. Content-Type must be \&quot;text/plain; charset&#x3D;utf-8\&quot;.
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_name_jobs_id_log_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_retry_post
  # Retry a job.
  # \&quot;The /retry endpoint can be used to force a retry of jobs with status succeeded or cancelled. It can also be used to retry jobs that in the failed state, but whose max_retries field is 0. The retried job will continue to have max_retries &#x3D; 0.\&quot; 
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_name_jobs_id_retry_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_start_post
  # Mark job as started, ie: status &#x3D; &#39;running&#39;
  # Job status is changed to &#39;running&#39; if it was in a valid state before. Job&#39;s &#x60;started_at&#x60; time is initialized.
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_name_jobs_id_start_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_success_post
  # Mark job as succeeded.
  # Job status is changed to succeeded if it was in a valid state before. Job&#39;s &#x60;completed_at&#x60; time is initialized.
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_name_jobs_id_success_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_id_touch_post
  # Extend job timeout.
  # Consumers can sometimes take a while to run the task after accepting it.  An example is when the runner does not have the docker image locally, it can spend a significant time downloading the image. If the timeout is small, the job may never get to run, or run but not be accepted by Titan. Consumers can touch the job before it times out. Titan will reset the timeout, giving the consumer another timeout seconds to run the job. Touch is only valid while the job is in a running state. If touch fails, the runner may stop running the job. 
  # @param name Name of group for this set of jobs.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'groups_name_jobs_id_touch_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_jobs_post
  # Enqueue Job
  # Enqueues job(s). If any of the jobs is invalid, none of the jobs are enqueued. 
  # @param name name of the group.
  # @param body Array of jobs to post.
  # @param [Hash] opts the optional parameters
  # @return [JobsWrapper]
  describe 'groups_name_jobs_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for jobs_get
  # Get next job.
  # Gets the next job in the queue, ready for processing. Titan may return &lt;&#x3D;n jobs. Consumers should start processing jobs in order. Each returned job is set to &#x60;status&#x60; \&quot;running\&quot; and &#x60;started_at&#x60; is set to the current time. No other consumer can retrieve this job.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :n Number of jobs to return.
  # @return [JobsWrapper]
  describe 'jobs_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
