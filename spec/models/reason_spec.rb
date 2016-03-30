=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.2.6

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IronTitan::Reason
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Reason' do
  before do
    # run before each test
    @instance = IronTitan::Reason.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Reason' do
    it 'should create an instact of Reason' do
      @instance.should be_a(IronTitan::Reason) 
    end
  end
end

