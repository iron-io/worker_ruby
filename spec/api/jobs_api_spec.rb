=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.0.5

Generated by: https://github.com/swagger-api/swagger-codegen.git


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
      @instance.should be_a(IronTitan::JobsApi)
    end
  end

  # unit tests for job_id_get
  # Gets job by id
  # Gets a job by id.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_patch
  # Update a job
  # Typically used to update status on error/completion. TODO: only allow &#39;status&#39; field.
  # @param id Job id
  # @param body Job data to post
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_patch test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_cancel_post
  # Cancel a job.
  # This will prevent a job from running. TODO: should we attempt to kill a running job?
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_cancel_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_log_get
  # Get the log of a completed job.
  # Retrieves the log from log storage.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [Log]
  describe 'job_id_log_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for job_id_retry_post
  # Retry a job.
  # If a job fails, you can retry the job with the original payload.
  # @param id Job id
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'job_id_retry_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for jobs_get
  # Get next job.
  # Gets the next job in the queue, ready for processing.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :n Number of jobs to return.
  # @return [JobArray]
  describe 'jobs_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for jobs_post
  # Enqueue Job
  # Enqueues a job.
  # @param body Array of jobs to post.
  # @param [Hash] opts the optional parameters
  # @return [JobArray]
  describe 'jobs_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
