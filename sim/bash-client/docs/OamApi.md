# OamApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPyHssOamPeers**](OamApi.md#getPyHssOamPeers) | **GET** /oam/diameter_peers | Get all Diameter Peers
[**getPyHssOamPing**](OamApi.md#getPyHssOamPing) | **GET** /oam/ping | Ping the API to check if it&#39;s alive
[**getPyHssOamReconcileIms**](OamApi.md#getPyHssOamReconcileIms) | **GET** /oam/reconcile/ims/{imsi} | Get current location of IMS Subscriber from all linked HSS nodes
[**getPyHssOamRollbackLast**](OamApi.md#getPyHssOamRollbackLast) | **GET** /oam/rollback_operation/last | Undo the last Insert/Update/Delete operation
[**getPyHssOamRollbackLastTable**](OamApi.md#getPyHssOamRollbackLastTable) | **GET** /oam/rollback_operation/{operation_id} | Undo the last Insert/Update/Delete operation for a given operation id
[**getPyHssOamServingSubs**](OamApi.md#getPyHssOamServingSubs) | **GET** /oam/serving_subs | Get all Subscribers served by HSS
[**getPyHssOamServingSubsIms**](OamApi.md#getPyHssOamServingSubsIms) | **GET** /oam/serving_subs_ims | Get all Subscribers served by IMS
[**getPyHssOamServingSubsPcrf**](OamApi.md#getPyHssOamServingSubsPcrf) | **GET** /oam/serving_subs_pcrf | Get all Subscribers served by PCRF


## **getPyHssOamPeers**

Get all Diameter Peers

### Example
```bash
 getPyHssOamPeers
```

### Parameters
This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssOamPing**

Ping the API to check if it's alive

### Example
```bash
 getPyHssOamPing
```

### Parameters
This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssOamReconcileIms**

Get current location of IMS Subscriber from all linked HSS nodes

### Example
```bash
 getPyHssOamReconcileIms imsi=value
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

## **getPyHssOamRollbackLast**

Undo the last Insert/Update/Delete operation

### Example
```bash
 getPyHssOamRollbackLast
```

### Parameters
This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssOamRollbackLastTable**

Undo the last Insert/Update/Delete operation for a given operation id

### Example
```bash
 getPyHssOamRollbackLastTable operation_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **operationId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssOamServingSubs**

Get all Subscribers served by HSS

### Example
```bash
 getPyHssOamServingSubs
```

### Parameters
This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssOamServingSubsIms**

Get all Subscribers served by IMS

### Example
```bash
 getPyHssOamServingSubsIms
```

### Parameters
This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssOamServingSubsPcrf**

Get all Subscribers served by PCRF

### Example
```bash
 getPyHssOamServingSubsPcrf
```

### Parameters
This endpoint does not need any parameter.

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

