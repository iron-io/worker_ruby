=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.3.5

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for IronTitan::RunnerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RunnerApi' do
  before do
    # run before each test
    @instance = IronTitan::RunnerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RunnerApi' do
    it 'should create an instact of RunnerApi' do
      @instance.should be_a(IronTitan::RunnerApi)
    end
  end

  # unit tests for groups_group_name_jobs_id_error_post
  # Mark job as failed.
  # Job is marked as failed if it was in a valid state. Job&#39;s `finished_at` time is initialized.
  # @param group_name Name of group for this set of jobs.
  # @param id Job id
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_group_name_jobs_id_error_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for groups_group_name_jobs_id_start_post
  # Mark job as started, ie: status = &#39;running&#39;
  # Job status is changed to &#39;running&#39; if it was in a valid state before. Job&#39;s `started_at` time is initialized.
  # @param group_name Name of group for this set of jobs.
  # @param id Job id
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_group_name_jobs_id_start_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for groups_group_name_jobs_id_success_post
  # Mark job as succeeded.
  # Job status is changed to succeeded if it was in a valid state before. Job&#39;s `completed_at` time is initialized.
  # @param group_name Name of group for this set of jobs.
  # @param id Job id
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [JobWrapper]
  describe 'groups_group_name_jobs_id_success_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end