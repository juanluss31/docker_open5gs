# EirApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**create EIR Object**](EirApi.md#create EIR Object) | **PUT** /eir/ | Create new EIR Rule
[**deletePyHssEirGet**](EirApi.md#deletePyHssEirGet) | **DELETE** /eir/{eir_id} | Delete all data for specified eir_data
[**deletePyHssEirHistory**](EirApi.md#deletePyHssEirHistory) | **DELETE** /eir/eir_history/{attribute} | Get Delete for IMSI or IMEI
[**getPyHssEirAll**](EirApi.md#getPyHssEirAll) | **GET** /eir/list | Get all EIR Rules
[**getPyHssEirAllHistory**](EirApi.md#getPyHssEirAllHistory) | **GET** /eir/eir_history/list | Get EIR history for all subscribers
[**getPyHssEirGet**](EirApi.md#getPyHssEirGet) | **GET** /eir/{eir_id} | Get all EIR data for specified eir_id
[**getPyHssEirHistory**](EirApi.md#getPyHssEirHistory) | **GET** /eir/eir_history/{attribute} | Get history for IMSI or IMEI
[**getPyHssEirTac**](EirApi.md#getPyHssEirTac) | **GET** /eir/lookup_imei/{imei} | Get Device Info from IMEI
[**update eir Object**](EirApi.md#update eir Object) | **PATCH** /eir/{eir_id} | Update eir_id data for specified eir_id


## **create EIR Object**

Create new EIR Rule

### Example
```bash
 create EIR Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**EIR JSON**](EIR JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssEirGet**

Delete all data for specified eir_data

### Example
```bash
 deletePyHssEirGet eir_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eirId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssEirHistory**

Get Delete for IMSI or IMEI

### Example
```bash
 deletePyHssEirHistory attribute=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssEirAll**

Get all EIR Rules

### Example
```bash
 getPyHssEirAll  page=value  page_size=value
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

## **getPyHssEirAllHistory**

Get EIR history for all subscribers

### Example
```bash
 getPyHssEirAllHistory  page=value  page_size=value
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

## **getPyHssEirGet**

Get all EIR data for specified eir_id

### Example
```bash
 getPyHssEirGet eir_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eirId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssEirHistory**

Get history for IMSI or IMEI

### Example
```bash
 getPyHssEirHistory attribute=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssEirTac**

Get Device Info from IMEI

### Example
```bash
 getPyHssEirTac imei=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imei** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **update eir Object**

Update eir_id data for specified eir_id

### Example
```bash
 update eir Object eir_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eirId** | **string** |  |
 **payload** | [**EIR JSON**](EIR JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

