# pacer_pro_client

PacerProClient - the Ruby gem for the PacerPro

PacerPro API documentation.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.2.1
- Package version: 1.0.0
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pacer_pro_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./pacer_pro_client-1.0.0.gem
```
(for development, run `gem install --dev ./pacer_pro_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pacer_pro_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'pacer_pro_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'pacer_pro_client'

api_instance = PacerProClient::AuthenticationApi.new

authorization = "authorization_example" # String | 


begin
  #Revoke all JWT tokens (logout).
  api_instance.session_delete(authorization)
rescue PacerProClient::ApiError => e
  puts "Exception when calling AuthenticationApi->session_delete: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.pacerpro.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PacerProClient::AuthenticationApi* | [**session_delete**](docs/AuthenticationApi.md#session_delete) | **DELETE** /session | Revoke all JWT tokens (logout).
*PacerProClient::AuthenticationApi* | [**session_get**](docs/AuthenticationApi.md#session_get) | **GET** /session | Refresh authentication token
*PacerProClient::AuthenticationApi* | [**session_post**](docs/AuthenticationApi.md#session_post) | **POST** /session | Initial authentication.
*PacerProClient::MattersApi* | [**matters_get**](docs/MattersApi.md#matters_get) | **GET** /matters | 
*PacerProClient::MattersApi* | [**matters_matter_id_get**](docs/MattersApi.md#matters_matter_id_get) | **GET** /matters/{matterId} | 


## Documentation for Models

 - [PacerProClient::Empty](docs/Empty.md)
 - [PacerProClient::Matter](docs/Matter.md)
 - [PacerProClient::Matters](docs/Matters.md)
 - [PacerProClient::Session](docs/Session.md)
 - [PacerProClient::User](docs/User.md)


## Documentation for Authorization

 All endpoints do not require authorization.
