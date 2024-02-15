# ApnApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**create APN Object**](ApnApi.md#create APN Object) | **PUT** /apn/ | Create new APN
[**deletePyHssApnGet**](ApnApi.md#deletePyHssApnGet) | **DELETE** /apn/{apn_id} | Delete all APN data for specified APN ID
[**getPyHssApnGet**](ApnApi.md#getPyHssApnGet) | **GET** /apn/{apn_id} | Get all APN data for specified APN ID
[**getPyHssOamAllApNs**](ApnApi.md#getPyHssOamAllApNs) | **GET** /apn/list | Get all APNs
[**update APN Object**](ApnApi.md#update APN Object) | **PATCH** /apn/{apn_id} | Update APN data for specified APN ID


## **create APN Object**

Create new APN

### Example
```bash
 create APN Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**APN JSON**](APN JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssApnGet**

Delete all APN data for specified APN ID

### Example
```bash
 deletePyHssApnGet apn_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apnId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssApnGet**

Get all APN data for specified APN ID

### Example
```bash
 getPyHssApnGet apn_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apnId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssOamAllApNs**

Get all APNs

### Example
```bash
 getPyHssOamAllApNs  page=value  page_size=value
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

## **update APN Object**

Update APN data for specified APN ID

### Example
```bash
 update APN Object apn_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apnId** | **string** |  |
 **payload** | [**APN JSON**](APN JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

