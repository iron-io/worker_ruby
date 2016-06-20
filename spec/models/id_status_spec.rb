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
require 'date'

# Unit tests for IronTitan::IdStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'IdStatus' do
  before do
    # run before each test
    @instance = IronTitan::IdStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IdStatus' do
    it 'should create an instact of IdStatus' do
      expect(@instance).to be_instance_of(IronTitan::IdStatus)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
       validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["delayed", "queued", "running", "success", "error", "cancelled"])
       validator.allowable_values.each do |value|
         expect { @instance.status = value }.not_to raise_error
       end
    end
  end

end

