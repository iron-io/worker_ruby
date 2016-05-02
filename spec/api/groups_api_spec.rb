=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.3.10

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for IronTitan::GroupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GroupsApi' do
  before do
    # run before each test
    @instance = IronTitan::GroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupsApi' do
    it 'should create an instact of GroupsApi' do
      @instance.should be_a(IronTitan::GroupsApi)
    end
  end

  # unit tests for groups_get
  # Get all group names.
  # Get a list of all the groups in the system.
  # @param [Hash] opts the optional parameters
  # @return [GroupsWrapper]
  describe 'groups_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for groups_name_get
  # Get information for a group.
  # This gives more details about a job group, such as statistics.
  # @param name name of the group.
  # @param [Hash] opts the optional parameters
  # @return [GroupWrapper]
  describe 'groups_name_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for groups_post
  # Post new group
  # Insert a new job group
  # @param body Group to post.
  # @param [Hash] opts the optional parameters
  # @return [GroupWrapper]
  describe 'groups_post test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
