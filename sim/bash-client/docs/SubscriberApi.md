# SubscriberApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**create SUBSCRIBER Object**](SubscriberApi.md#create SUBSCRIBER Object) | **PUT** /subscriber/ | Create new SUBSCRIBER
[**create Subscriber Routing Object**](SubscriberApi.md#create Subscriber Routing Object) | **PUT** /subscriber/routing/ | Create new Subscriber Routing Binding
[**deletePyHssSubscriberGet**](SubscriberApi.md#deletePyHssSubscriberGet) | **DELETE** /subscriber/{subscriber_id} | Delete all data for specified subscriber_id
[**deletePyHssSubscriberSubscriberRouting**](SubscriberApi.md#deletePyHssSubscriberSubscriberRouting) | **DELETE** /subscriber/routing/{subscriber_id}/{apn_id} | Delete Subscriber Routing binding for specified subscriber_id &amp; apn_id
[**getPyHssSubscriberAll**](SubscriberApi.md#getPyHssSubscriberAll) | **GET** /subscriber/list | Get all Subscribers
[**getPyHssSubscriberGet**](SubscriberApi.md#getPyHssSubscriberGet) | **GET** /subscriber/{subscriber_id} | Get all SUBSCRIBER data for specified subscriber_id
[**getPyHssSubscriberImsi**](SubscriberApi.md#getPyHssSubscriberImsi) | **GET** /subscriber/imsi/{imsi} | Get data for IMSI
[**getPyHssSubscriberMsisdn**](SubscriberApi.md#getPyHssSubscriberMsisdn) | **GET** /subscriber/msisdn/{msisdn} | Get data for MSISDN
[**getPyHssSubscriberSubscriberRouting**](SubscriberApi.md#getPyHssSubscriberSubscriberRouting) | **GET** /subscriber/routing/{subscriber_id}/{apn_id} | Get Subscriber Routing for specified subscriber_id &amp; apn_id
[**update SUBSCRIBER Object**](SubscriberApi.md#update SUBSCRIBER Object) | **PATCH** /subscriber/{subscriber_id} | Update SUBSCRIBER data for specified subscriber_id
[**update SUBSCRIBERROUTING Object**](SubscriberApi.md#update SUBSCRIBERROUTING Object) | **PATCH** /subscriber/routing/{subscriber_routing_id} | Update SUBSCRIBER data for specified subscriber_routing_id


## **create SUBSCRIBER Object**

Create new SUBSCRIBER

### Example
```bash
 create SUBSCRIBER Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SUBSCRIBER JSON**](SUBSCRIBER JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **create Subscriber Routing Object**

Create new Subscriber Routing Binding

### Example
```bash
 create Subscriber Routing Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**SUBSCRIBER_ROUTING JSON**](SUBSCRIBER_ROUTING JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssSubscriberGet**

Delete all data for specified subscriber_id

### Example
```bash
 deletePyHssSubscriberGet subscriber_id=value
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

## **deletePyHssSubscriberSubscriberRouting**

Delete Subscriber Routing binding for specified subscriber_id & apn_id

### Example
```bash
 deletePyHssSubscriberSubscriberRouting subscriber_id=value apn_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberId** | **string** |  |
 **apnId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssSubscriberAll**

Get all Subscribers

### Example
```bash
 getPyHssSubscriberAll  page=value  page_size=value
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

## **getPyHssSubscriberGet**

Get all SUBSCRIBER data for specified subscriber_id

### Example
```bash
 getPyHssSubscriberGet subscriber_id=value
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

## **getPyHssSubscriberImsi**

Get data for IMSI

### Example
```bash
 getPyHssSubscriberImsi imsi=value
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

## **getPyHssSubscriberMsisdn**

Get data for MSISDN

### Example
```bash
 getPyHssSubscriberMsisdn msisdn=value
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

## **getPyHssSubscriberSubscriberRouting**

Get Subscriber Routing for specified subscriber_id & apn_id

### Example
```bash
 getPyHssSubscriberSubscriberRouting subscriber_id=value apn_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberId** | **string** |  |
 **apnId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **update SUBSCRIBER Object**

Update SUBSCRIBER data for specified subscriber_id

### Example
```bash
 update SUBSCRIBER Object subscriber_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberId** | **string** |  |
 **payload** | [**SUBSCRIBER JSON**](SUBSCRIBER JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **update SUBSCRIBERROUTING Object**

Update SUBSCRIBER data for specified subscriber_routing_id

### Example
```bash
 update SUBSCRIBERROUTING Object subscriber_routing_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberRoutingId** | **string** |  |
 **payload** | [**SUBSCRIBER_ROUTING JSON**](SUBSCRIBER_ROUTING JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

