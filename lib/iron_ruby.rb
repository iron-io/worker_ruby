=begin
#IronWorker CE API

#The ultimate, language agnostic, container based task processing framework.

OpenAPI spec version: 0.5.0

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

# Common files
require 'iron_ruby/api_client'
require 'iron_ruby/api_error'
require 'iron_ruby/version'
require 'iron_ruby/configuration'

# Models
require 'iron_ruby/models/complete'
require 'iron_ruby/models/error'
require 'iron_ruby/models/error_body'
require 'iron_ruby/models/group'
require 'iron_ruby/models/group_wrapper'
require 'iron_ruby/models/groups_wrapper'
require 'iron_ruby/models/id_status'
require 'iron_ruby/models/new_task'
require 'iron_ruby/models/new_tasks_wrapper'
require 'iron_ruby/models/start'
require 'iron_ruby/models/task'
require 'iron_ruby/models/task_wrapper'
require 'iron_ruby/models/tasks_wrapper'

# APIs
require 'iron_ruby/api/groups_api'
require 'iron_ruby/api/runner_api'
require 'iron_ruby/api/tasks_api'

module IronWorker
  class << self
    # Customize default settings for the SDK using block.
    #   IronWorker.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
