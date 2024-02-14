# OperationLogsApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPyHssOperationLogLast**](OperationLogsApi.md#getPyHssOperationLogLast) | **GET** /operation_logs/last | Get the most recent Operation Log
[**getPyHssOperationLogList**](OperationLogsApi.md#getPyHssOperationLogList) | **GET** /operation_logs/list | Get all Operation Logs
[**getPyHssOperationLogListTable**](OperationLogsApi.md#getPyHssOperationLogListTable) | **GET** /operation_logs/list/table/{table_name} | Get all Operation Logs for a given table


## **getPyHssOperationLogLast**

Get the most recent Operation Log

### Example
```bash
 getPyHssOperationLogLast
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

## **getPyHssOperationLogList**

Get all Operation Logs

### Example
```bash
 getPyHssOperationLogList  page=value  page_size=value
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

## **getPyHssOperationLogListTable**

Get all Operation Logs for a given table

### Example
```bash
 getPyHssOperationLogListTable table_name=value  page=value  page_size=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tableName** | **string** |  |
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

