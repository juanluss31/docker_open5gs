# SubscriberAttributesApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**create Attribute Object**](SubscriberAttributesApi.md#create Attribute Object) | **PUT** /subscriber_attributes/ | Create new Attribute for Subscriber
[**deletePyHssAttributesGet**](SubscriberAttributesApi.md#deletePyHssAttributesGet) | **DELETE** /subscriber_attributes/{subscriber_attributes_id} | Delete specified attribute ID
[**getPyHssAttributesGet**](SubscriberAttributesApi.md#getPyHssAttributesGet) | **GET** /subscriber_attributes/{subscriber_id} | Get all attributes / values for specified Subscriber ID
[**getPyHssSubscriberAttributesAll**](SubscriberAttributesApi.md#getPyHssSubscriberAttributesAll) | **GET** /subscriber_attributes/list | Get all Subscriber Attributes
[**update Attribute Object**](SubscriberAttributesApi.md#update Attribute Object) | **PATCH** /subscriber_attributes/{subscriber_attributes_id} | Update data for specified attribute ID


## **create Attribute Object**

Create new Attribute for Subscriber

### Example
```bash
 create Attribute Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SUBSCRIBER_ATTRIBUTES JSON**](SUBSCRIBER_ATTRIBUTES JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssAttributesGet**

Delete specified attribute ID

### Example
```bash
 deletePyHssAttributesGet subscriber_attributes_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberAttributesId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssAttributesGet**

Get all attributes / values for specified Subscriber ID

### Example
```bash
 getPyHssAttributesGet subscriber_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssSubscriberAttributesAll**

Get all Subscriber Attributes

### Example
```bash
 getPyHssSubscriberAttributesAll  page=value  page_size=value
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

## **update Attribute Object**

Update data for specified attribute ID

### Example
```bash
 update Attribute Object subscriber_attributes_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberAttributesId** | **string** |  |
 **payload** | [**SUBSCRIBER_ATTRIBUTES JSON**](SUBSCRIBER_ATTRIBUTES JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

