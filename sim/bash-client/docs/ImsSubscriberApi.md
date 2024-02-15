# ImsSubscriberApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**create IMS SUBSCRIBER Object**](ImsSubscriberApi.md#create IMS SUBSCRIBER Object) | **PUT** /ims_subscriber/ | Create new IMS SUBSCRIBER
[**deletePyHssImsSubscriberGet**](ImsSubscriberApi.md#deletePyHssImsSubscriberGet) | **DELETE** /ims_subscriber/{ims_subscriber_id} | Delete all data for specified ims_subscriber_id
[**getPyHssImsSubscriberAll**](ImsSubscriberApi.md#getPyHssImsSubscriberAll) | **GET** /ims_subscriber/list | Get all IMS Subscribers
[**getPyHssImsSubscriberGet**](ImsSubscriberApi.md#getPyHssImsSubscriberGet) | **GET** /ims_subscriber/{ims_subscriber_id} | Get all SUBSCRIBER data for specified ims_subscriber_id
[**getPyHssImsSubscriberImsi**](ImsSubscriberApi.md#getPyHssImsSubscriberImsi) | **GET** /ims_subscriber/ims_subscriber_imsi/{imsi} | Get IMS data for imsi
[**getPyHssImsSubscriberMsisdn**](ImsSubscriberApi.md#getPyHssImsSubscriberMsisdn) | **GET** /ims_subscriber/ims_subscriber_msisdn/{msisdn} | Get IMS data for MSISDN
[**update IMS SUBSCRIBER Object**](ImsSubscriberApi.md#update IMS SUBSCRIBER Object) | **PATCH** /ims_subscriber/{ims_subscriber_id} | Update IMS SUBSCRIBER data for specified ims_subscriber


## **create IMS SUBSCRIBER Object**

Create new IMS SUBSCRIBER

### Example
```bash
 create IMS SUBSCRIBER Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**IMS_SUBSCRIBER JSON**](IMS_SUBSCRIBER JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssImsSubscriberGet**

Delete all data for specified ims_subscriber_id

### Example
```bash
 deletePyHssImsSubscriberGet ims_subscriber_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imsSubscriberId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssImsSubscriberAll**

Get all IMS Subscribers

### Example
```bash
 getPyHssImsSubscriberAll  page=value  page_size=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** | Page number for pagination | [optional] [default to 0]
 **pageSize** | **integer** | Number of items per page for pagination | [optional] [default to 200]

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssImsSubscriberGet**

Get all SUBSCRIBER data for specified ims_subscriber_id

### Example
```bash
 getPyHssImsSubscriberGet ims_subscriber_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imsSubscriberId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssImsSubscriberImsi**

Get IMS data for imsi

### Example
```bash
 getPyHssImsSubscriberImsi imsi=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imsi** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssImsSubscriberMsisdn**

Get IMS data for MSISDN

### Example
```bash
 getPyHssImsSubscriberMsisdn msisdn=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **msisdn** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **update IMS SUBSCRIBER Object**

Update IMS SUBSCRIBER data for specified ims_subscriber

### Example
```bash
 update IMS SUBSCRIBER Object ims_subscriber_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imsSubscriberId** | **string** |  |
 **payload** | [**IMS_SUBSCRIBER JSON**](IMS_SUBSCRIBER JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

