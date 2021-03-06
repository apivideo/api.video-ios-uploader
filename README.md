[![badge](https://img.shields.io/twitter/follow/api_video?style=social)](https://twitter.com/intent/follow?screen_name=api_video) &nbsp; [![badge](https://img.shields.io/github/stars/apivideo/api.video-ios-uploader?style=social)]() &nbsp; [![badge](https://img.shields.io/discourse/topics?server=https%3A%2F%2Fcommunity.api.video)](https://community.api.video)
![](https://github.com/apivideo/API_OAS_file/blob/master/apivideo_banner.png)
<h1 align="center">api.video iOS uploader</h1>

[api.video](https://api.video) is the video infrastructure for product builders. Lightning fast video APIs for integrating, scaling, and managing on-demand & low latency live streaming features in your app.

# Table of contents

- [Project description](#project-description)
- [Getting started](#getting-started)
  - [Installation](#installation)
    - [Carthage](#carthage)
    - [CocoaPods](#cocoaPods)
  - [Code sample](#code-sample)
- [Documentation](#documentation)
  - [API Endpoints](#api-endpoints)
    - [VideosAPI](#VideosAPI)
  - [Models](#models)
  - [Authorization](#documentation-for-authorization)
    - [API key](#api-key)
    - [Public endpoints](#public-endpoints)
- [Have you gotten use from this API client?](#have-you-gotten-use-from-this-api-client)
- [Contribution](#contribution)

# Project description

api.video's iOS  uploads videos to api.video using delegated upload token or API Key.

It allows you to upload videos in two ways:
- standard upload: to send a whole video file in one go
- progressive upload: to send a video file by chunks, without needing to know the final size of the video file

# Getting started

## Installation

### Carthage

Specify it in your `Cartfile`:

```
github "apivideo/api.video-ios-uploader" ~> 1.0.0
```

Run `carthage update`

### CocoaPods

Add `pod 'ApiVideoUploader', '1.0.0'` in your `Podfile`

Run `pod install`

## Code sample

Please follow the [installation](#installation) instruction and execute the following Swift code:
```swift
import ApiVideoUploader


    // If you rather like to use the sandbox environment:
    // ApiVideoUploader.basePath = Environment.sandbox.rawValue
    // If you rather like to upload with your "YOUR_API_KEY" (upload)
    // ApiVideoUploader.apiKey = "YOUR_API_KEY"

    VideosAPI.uploadWithUploadToken(token: "MY_VIDEO_TOKEN", file: url) { video, error in
        if let video = video {
            // Manage upload with upload token success here
        }
        if let error = error {
            // Manage upload with upload token error here
        }
    }

```

# Documentation

## API Endpoints

All URIs are relative to *https://ws.api.video*


### VideosAPI

#### Retrieve an instance of VideosAPI:

```swift
VideosAPI
```

#### Endpoints

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload**](docs/VideosAPI.md#upload) | **POST** /videos/{videoId}/source | Upload a video
[**uploadWithUploadToken**](docs/VideosAPI.md#uploadWithUploadToken) | **POST** /upload | Upload with an upload token



## Models

 - [AccessToken](docs/AccessToken.md)
 - [AuthenticatePayload](docs/AuthenticatePayload.md)
 - [BadRequest](docs/BadRequest.md)
 - [Metadata](docs/Metadata.md)
 - [NotFound](docs/NotFound.md)
 - [RefreshTokenPayload](docs/RefreshTokenPayload.md)
 - [Video](docs/Video.md)
 - [VideoAssets](docs/VideoAssets.md)
 - [VideoSource](docs/VideoSource.md)
 - [VideoSourceLiveStream](docs/VideoSourceLiveStream.md)
 - [VideoSourceLiveStreamLink](docs/VideoSourceLiveStreamLink.md)


## Documentation for Authorization

### API key

Most endpoints required to be authenticated using the API key mechanism described in our [documentation](https://docs.api.video/reference#authentication).
The access token generation mechanism is automatically handled by the client. All you have to do is provide an API key:
```swift
ApiVideoUploader.apiKey = YOUR_API_KEY
```

### Public endpoints

Some endpoints don't require authentication. These one can be called without setting `ApiVideoUploader.apiKey`:

## Have you gotten use from this API client?

Please take a moment to leave a star on the client ???

This helps other users to find the clients and also helps us understand which clients are most popular. Thank you!

# Contribution

Since this API client is generated from an OpenAPI description, we cannot accept pull requests made directly to the repository. If you want to contribute, you can open a pull request on the repository of our [client generator](https://github.com/apivideo/api-client-generator). Otherwise, you can also simply open an issue detailing your need on this repository.
