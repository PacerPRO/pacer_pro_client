# pacer_pro_client

PacerProClient - the Ruby gem for the PacerPro

PacerPro API documentation.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.2.1
- Package version: 0.0.0
- Build package: class io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

Finally add this to the Gemfile:

    gem 'pacer_pro_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'pacer_pro_client', :git => 'https://github.com/PacerPRO/pacer_pro_client_rb.git'

## Getting Started

Please follow the [installation](#installation) procedure, then 

1. Authenticate via [**session_post**](docs/AuthenticationApi.md#session_post)
2. The returned [PacerProClient::Session](docs/Session.md) will have the jwtToken
3. 

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

