=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.4.0

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
      expect(@instance).to be_instance_of(IronTitan::RunnerApi)
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

end
