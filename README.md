# worker_ruby

IronWorker - the Ruby gem for the IronWorker CE API

The ultimate, language agnostic, container based task processing framework.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.5.7
- Package version: 0.5.7
- Build date: 2016-08-24T18:32:37.039Z
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build worker_ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./worker_ruby-0.5.7.gem
```
(for development, run `gem install --dev ./worker_ruby-0.5.7.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'worker_ruby', '~> 0.5.7'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'worker_ruby', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'worker_ruby'

api_instance = IronWorker::GroupsApi.new

begin
  #Get all group names.
  result = api_instance.groups_get
  p result
rescue IronWorker::ApiError => e
  puts "Exception when calling GroupsApi->groups_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost:8080/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IronWorker::GroupsApi* | [**groups_get**](docs/GroupsApi.md#groups_get) | **GET** /groups | Get all group names.
*IronWorker::GroupsApi* | [**groups_name_get**](docs/GroupsApi.md#groups_name_get) | **GET** /groups/{name} | Get information for a group.
*IronWorker::GroupsApi* | [**groups_name_put**](docs/GroupsApi.md#groups_name_put) | **PUT** /groups/{name} | Create/update a task group.
*IronWorker::GroupsApi* | [**groups_post**](docs/GroupsApi.md#groups_post) | **POST** /groups | Post new group
*IronWorker::RunnerApi* | [**groups_name_tasks_id_error_post**](docs/RunnerApi.md#groups_name_tasks_id_error_post) | **POST** /groups/{name}/tasks/{id}/error | Mark task as failed.
*IronWorker::RunnerApi* | [**groups_name_tasks_id_start_post**](docs/RunnerApi.md#groups_name_tasks_id_start_post) | **POST** /groups/{name}/tasks/{id}/start | Mark task as started, ie: status = 'running'
*IronWorker::RunnerApi* | [**groups_name_tasks_id_success_post**](docs/RunnerApi.md#groups_name_tasks_id_success_post) | **POST** /groups/{name}/tasks/{id}/success | Mark task as succeeded.
*IronWorker::TasksApi* | [**groups_name_tasks_get**](docs/TasksApi.md#groups_name_tasks_get) | **GET** /groups/{name}/tasks | Get task list by group name.
*IronWorker::TasksApi* | [**groups_name_tasks_id_cancel_post**](docs/TasksApi.md#groups_name_tasks_id_cancel_post) | **POST** /groups/{name}/tasks/{id}/cancel | Cancel a task.
*IronWorker::TasksApi* | [**groups_name_tasks_id_delete**](docs/TasksApi.md#groups_name_tasks_id_delete) | **DELETE** /groups/{name}/tasks/{id} | Delete the task.
*IronWorker::TasksApi* | [**groups_name_tasks_id_error_post**](docs/TasksApi.md#groups_name_tasks_id_error_post) | **POST** /groups/{name}/tasks/{id}/error | Mark task as failed.
*IronWorker::TasksApi* | [**groups_name_tasks_id_get**](docs/TasksApi.md#groups_name_tasks_id_get) | **GET** /groups/{name}/tasks/{id} | Gets task by id
*IronWorker::TasksApi* | [**groups_name_tasks_id_log_get**](docs/TasksApi.md#groups_name_tasks_id_log_get) | **GET** /groups/{name}/tasks/{id}/log | Get the log of a completed task.
*IronWorker::TasksApi* | [**groups_name_tasks_id_log_post**](docs/TasksApi.md#groups_name_tasks_id_log_post) | **POST** /groups/{name}/tasks/{id}/log | Send in a log for storage.
*IronWorker::TasksApi* | [**groups_name_tasks_id_retry_post**](docs/TasksApi.md#groups_name_tasks_id_retry_post) | **POST** /groups/{name}/tasks/{id}/retry | Retry a task.
*IronWorker::TasksApi* | [**groups_name_tasks_id_start_post**](docs/TasksApi.md#groups_name_tasks_id_start_post) | **POST** /groups/{name}/tasks/{id}/start | Mark task as started, ie: status = 'running'
*IronWorker::TasksApi* | [**groups_name_tasks_id_success_post**](docs/TasksApi.md#groups_name_tasks_id_success_post) | **POST** /groups/{name}/tasks/{id}/success | Mark task as succeeded.
*IronWorker::TasksApi* | [**groups_name_tasks_id_touch_post**](docs/TasksApi.md#groups_name_tasks_id_touch_post) | **POST** /groups/{name}/tasks/{id}/touch | Extend task timeout.
*IronWorker::TasksApi* | [**groups_name_tasks_post**](docs/TasksApi.md#groups_name_tasks_post) | **POST** /groups/{name}/tasks | Enqueue task
*IronWorker::TasksApi* | [**tasks_get**](docs/TasksApi.md#tasks_get) | **GET** /tasks | Get next task.


## Documentation for Models

 - [IronWorker::Complete](docs/Complete.md)
 - [IronWorker::Error](docs/Error.md)
 - [IronWorker::ErrorBody](docs/ErrorBody.md)
 - [IronWorker::Group](docs/Group.md)
 - [IronWorker::GroupWrapper](docs/GroupWrapper.md)
 - [IronWorker::GroupsWrapper](docs/GroupsWrapper.md)
 - [IronWorker::IdStatus](docs/IdStatus.md)
 - [IronWorker::NewTask](docs/NewTask.md)
 - [IronWorker::NewTasksWrapper](docs/NewTasksWrapper.md)
 - [IronWorker::Start](docs/Start.md)
 - [IronWorker::Task](docs/Task.md)
 - [IronWorker::TaskWrapper](docs/TaskWrapper.md)
 - [IronWorker::TasksWrapper](docs/TasksWrapper.md)


## Documentation for Authorization

 All endpoints do not require authorization.

