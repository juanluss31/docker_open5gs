# TftApi

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**create TFT Object**](TftApi.md#create TFT Object) | **PUT** /tft/ | Create new TFT
[**deletePyHssTftGet**](TftApi.md#deletePyHssTftGet) | **DELETE** /tft/{tft_id} | Delete all data for specified tft_id
[**getPyHssTftAll**](TftApi.md#getPyHssTftAll) | **GET** /tft/list | Get all TFTs
[**getPyHssTftGet**](TftApi.md#getPyHssTftGet) | **GET** /tft/{tft_id} | Get all TFT data for specified tft_id
[**update IMS tftId Object**](TftApi.md#update IMS tftId Object) | **PATCH** /tft/{tft_id} | Update tft_id data for specified tft_id


## **create TFT Object**

Create new TFT

### Example
```bash
 create TFT Object
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**TFT JSON**](TFT JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **deletePyHssTftGet**

Delete all data for specified tft_id

### Example
```bash
 deletePyHssTftGet tft_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tftId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **getPyHssTftAll**

Get all TFTs

### Example
```bash
 getPyHssTftAll  page=value  page_size=value
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

## **getPyHssTftGet**

Get all TFT data for specified tft_id

### Example
```bash
 getPyHssTftGet tft_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tftId** | **string** |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

## **update IMS tftId Object**

Update tft_id data for specified tft_id

### Example
```bash
 update IMS tftId Object tft_id=value
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tftId** | **string** |  |
 **payload** | [**TFT JSON**](TFT JSON.md) |  |

### Return type

(empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

