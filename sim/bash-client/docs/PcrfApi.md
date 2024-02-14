# PcrfApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPyHssOamGetPcrfSubscriber**](PcrfApi.md#getPyHssOamGetPcrfSubscriber) | **GET** /pcrf/pcrf_subscriber_imsi/{imsi}/{apn_id} | Get PCRF data
[**getPyHssOamGetPcrfSubscriberAllApn**](PcrfApi.md#getPyHssOamGetPcrfSubscriberAllApn) | **GET** /pcrf/pcrf_subscriber_imsi/{imsi} | Get PCRF Data for a Subscriber
[**getPyHssPcrfComplete**](PcrfApi.md#getPyHssPcrfComplete) | **GET** /pcrf/{charging_rule_id} | Get full Charging Rule + TFTs
[**getPyHssPcrfSubscriberRouting**](PcrfApi.md#getPyHssPcrfSubscriberRouting) | **GET** /pcrf/subscriber_routing/{subscriber_routing} | Get Subscriber info from Subscriber Routing
[**push Charging Rule to a Subscriber**](PcrfApi.md#push Charging Rule to a Subscriber) | **PUT** /pcrf/ | Push predefined Charging Rule to Subscriber


## **getPyHssOamGetPcrfSubscriber**

Get PCRF data

### Example
```bash
 getPyHssOamGetPcrfSubscriber imsi=value apn_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imsi** | **string** |  |
 **apnId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssOamGetPcrfSubscriberAllApn**

Get PCRF Data for a Subscriber

### Example
```bash
 getPyHssOamGetPcrfSubscriberAllApn imsi=value
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

## **getPyHssPcrfComplete**

Get full Charging Rule + TFTs

### Example
```bash
 getPyHssPcrfComplete charging_rule_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chargingRuleId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssPcrfSubscriberRouting**

Get Subscriber info from Subscriber Routing

### Example
```bash
 getPyHssPcrfSubscriberRouting subscriber_routing=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriberRouting** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **push Charging Rule to a Subscriber**

Push predefined Charging Rule to Subscriber

### Example
```bash
 push Charging Rule to a Subscriber
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**PCRF_Rule**](PCRF_Rule.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

