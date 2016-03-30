# iron_titan

IronTitan - the Ruby gem for the Titan API

The ultimate, language agnostic, container based job processing framework.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API verion: 0.2.6
- Package version: 0.2.6
- Build date: 2016-03-30T21:32:12.247Z
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build iron_titan.gemspec
```

Then either install the gem locally:

```shell
gem install ./iron_titan-0.2.6.gem
```

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'iron_titan', '~> 0.2.6'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'iron_titan', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'iron_titan'

api_instance = IronTitan::CoreApi.new

id = "id_example" # String | Job id


begin
  #Delete the job.
  api_instance.job_id_delete(id)
rescue IronTitan::ApiError => e
  puts "Exception when calling CoreApi->job_id_delete: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://localhost:8080/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IronTitan::CoreApi* | [**job_id_delete**](docs/CoreApi.md#job_id_delete) | **DELETE** /job/{id} | Delete the job.
*IronTitan::CoreApi* | [**job_id_get**](docs/CoreApi.md#job_id_get) | **GET** /job/{id} | Gets job by id
*IronTitan::CoreApi* | [**jobs_consume_get**](docs/CoreApi.md#jobs_consume_get) | **GET** /jobs/consume | Get next job.
*IronTitan::CoreApi* | [**jobs_post**](docs/CoreApi.md#jobs_post) | **POST** /jobs | Enqueue Job
*IronTitan::ImagesApi* | [**image_id_get**](docs/ImagesApi.md#image_id_get) | **GET** /image/{id} | Get information for image id.
*IronTitan::ImagesApi* | [**images_get**](docs/ImagesApi.md#images_get) | **GET** /images | Get all image names.
*IronTitan::JobsApi* | [**job_id_cancel_post**](docs/JobsApi.md#job_id_cancel_post) | **POST** /job/{id}/cancel | Cancel a job.
*IronTitan::JobsApi* | [**job_id_delete**](docs/JobsApi.md#job_id_delete) | **DELETE** /job/{id} | Delete the job.
*IronTitan::JobsApi* | [**job_id_fail_post**](docs/JobsApi.md#job_id_fail_post) | **POST** /job/{id}/fail | Mark job as failed.
*IronTitan::JobsApi* | [**job_id_get**](docs/JobsApi.md#job_id_get) | **GET** /job/{id} | Gets job by id
*IronTitan::JobsApi* | [**job_id_log_get**](docs/JobsApi.md#job_id_log_get) | **GET** /job/{id}/log | Get the log of a completed job.
*IronTitan::JobsApi* | [**job_id_retry_post**](docs/JobsApi.md#job_id_retry_post) | **POST** /job/{id}/retry | Retry a job.
*IronTitan::JobsApi* | [**job_id_success_post**](docs/JobsApi.md#job_id_success_post) | **POST** /job/{id}/success | Mark job as succeeded.
*IronTitan::JobsApi* | [**job_id_touch_post**](docs/JobsApi.md#job_id_touch_post) | **POST** /job/{id}/touch | Extend job timeout.
*IronTitan::JobsApi* | [**jobs_consume_get**](docs/JobsApi.md#jobs_consume_get) | **GET** /jobs/consume | Get next job.
*IronTitan::JobsApi* | [**jobs_get**](docs/JobsApi.md#jobs_get) | **GET** /jobs | Peek at list of jobs.
*IronTitan::JobsApi* | [**jobs_post**](docs/JobsApi.md#jobs_post) | **POST** /jobs | Enqueue Job


## Documentation for Models

 - [IronTitan::Error](docs/Error.md)
 - [IronTitan::ErrorBody](docs/ErrorBody.md)
 - [IronTitan::IdStatus](docs/IdStatus.md)
 - [IronTitan::Image](docs/Image.md)
 - [IronTitan::ImageWrapper](docs/ImageWrapper.md)
 - [IronTitan::ImagesWrapper](docs/ImagesWrapper.md)
 - [IronTitan::Job](docs/Job.md)
 - [IronTitan::JobWrapper](docs/JobWrapper.md)
 - [IronTitan::JobsWrapper](docs/JobsWrapper.md)
 - [IronTitan::NewJob](docs/NewJob.md)
 - [IronTitan::NewJobsWrapper](docs/NewJobsWrapper.md)
 - [IronTitan::Reason](docs/Reason.md)


## Documentation for Authorization

 All endpoints do not require authorization.

