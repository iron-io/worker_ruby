# IronTitan::GroupsApi

All URIs are relative to *https://localhost:8080/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_get**](GroupsApi.md#groups_get) | **GET** /groups | Get all group names.
[**groups_name_get**](GroupsApi.md#groups_name_get) | **GET** /groups/{name} | Get information for a group.


# **groups_get**
> GroupsWrapper groups_get

Get all group names.

Get a list of all the groups in the system.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::GroupsApi.new

begin
  #Get all group names.
  result = api_instance.groups_get
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling GroupsApi->groups_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupsWrapper**](GroupsWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **groups_name_get**
> GroupWrapper groups_name_get(name)

Get information for a group.

This gives more details about a job group, such as statistics.

### Example
```ruby
# load the gem
require 'iron_titan'

api_instance = IronTitan::GroupsApi.new

name = "name_example" # String | name of the group.


begin
  #Get information for a group.
  result = api_instance.groups_name_get(name)
  p result
rescue IronTitan::ApiError => e
  puts "Exception when calling GroupsApi->groups_name_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the group. | 

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: application/json
 - **Accept**: application/json


