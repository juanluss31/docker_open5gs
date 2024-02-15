# ChargingRuleApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**create ChargingRule Object**](ChargingRuleApi.md#create ChargingRule Object) | **PUT** /charging_rule/ | Create new ChargingRule
[**deletePyHssChargingRuleGet**](ChargingRuleApi.md#deletePyHssChargingRuleGet) | **DELETE** /charging_rule/{charging_rule_id} | Delete all data for specified charging_rule_id
[**getPyHssChargingRuleAll**](ChargingRuleApi.md#getPyHssChargingRuleAll) | **GET** /charging_rule/list | Get all Charging Rules
[**getPyHssChargingRuleGet**](ChargingRuleApi.md#getPyHssChargingRuleGet) | **GET** /charging_rule/{charging_rule_id} | Get all Charging Rule data for specified charging_rule_id
[**update chargingRuleId Object**](ChargingRuleApi.md#update chargingRuleId Object) | **PATCH** /charging_rule/{charging_rule_id} | Update charging_rule_id data for specified charging_rule_id


## **create ChargingRule Object**

Create new ChargingRule

### Example
```bash
 create ChargingRule Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**CHARGING_RULE JSON**](CHARGING_RULE JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssChargingRuleGet**

Delete all data for specified charging_rule_id

### Example
```bash
 deletePyHssChargingRuleGet charging_rule_id=value
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

## **getPyHssChargingRuleAll**

Get all Charging Rules

### Example
```bash
 getPyHssChargingRuleAll  page=value  page_size=value
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

## **getPyHssChargingRuleGet**

Get all Charging Rule data for specified charging_rule_id

### Example
```bash
 getPyHssChargingRuleGet charging_rule_id=value
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

## **update chargingRuleId Object**

Update charging_rule_id data for specified charging_rule_id

### Example
```bash
 update chargingRuleId Object charging_rule_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chargingRuleId** | **string** |  |
 **payload** | [**CHARGING_RULE JSON**](CHARGING_RULE JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

