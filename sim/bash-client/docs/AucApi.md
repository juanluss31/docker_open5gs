# AucApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**create AUC Object**](AucApi.md#create AUC Object) | **PUT** /auc/ | Create new AUC
[**deletePyHssAucGet**](AucApi.md#deletePyHssAucGet) | **DELETE** /auc/{auc_id} | Delete all AUC data for specified AUC ID
[**getPyHssAucAll**](AucApi.md#getPyHssAucAll) | **GET** /auc/list | Get all AuC Data (except keys)
[**getPyHssAucGet**](AucApi.md#getPyHssAucGet) | **GET** /auc/{auc_id} | Get all AuC data for specified AuC ID
[**getPyHssAucGetIccid**](AucApi.md#getPyHssAucGetIccid) | **GET** /auc/iccid/{iccid} | Get all AuC data for specified ICCID
[**getPyHssAucGetImsi**](AucApi.md#getPyHssAucGetImsi) | **GET** /auc/imsi/{imsi} | Get all AuC data for specified IMSI
[**update AUC Object**](AucApi.md#update AUC Object) | **PATCH** /auc/{auc_id} | Update AuC data for specified AuC ID


## **create AUC Object**

Create new AUC

### Example
```bash
 create AUC Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**AUC JSON**](AUC JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssAucGet**

Delete all AUC data for specified AUC ID

### Example
```bash
 deletePyHssAucGet auc_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aucId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssAucAll**

Get all AuC Data (except keys)

### Example
```bash
 getPyHssAucAll  page=value  page_size=value
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

## **getPyHssAucGet**

Get all AuC data for specified AuC ID

### Example
```bash
 getPyHssAucGet auc_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aucId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssAucGetIccid**

Get all AuC data for specified ICCID

### Example
```bash
 getPyHssAucGetIccid iccid=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iccid** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssAucGetImsi**

Get all AuC data for specified IMSI

### Example
```bash
 getPyHssAucGetImsi imsi=value
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

## **update AUC Object**

Update AuC data for specified AuC ID

### Example
```bash
 update AUC Object auc_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aucId** | **string** |  |
 **payload** | [**AUC JSON**](AUC JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

