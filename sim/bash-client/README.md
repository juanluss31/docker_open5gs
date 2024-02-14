# Test Site - ca872358e4b0 - PyHSS OAM API Bash client

## Overview
This is a Bash client script for accessing Test Site - ca872358e4b0 - PyHSS OAM API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image
You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash
The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X
On OSX you might need to install bash-completion using Homebrew:
```shell
brew install bash-completion
```
and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh
In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.


## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ApnApi* | [**create APN Object**](docs/ApnApi.md#create apn object) | **PUT** /apn/ | Create new APN
*ApnApi* | [**deletePyHssApnGet**](docs/ApnApi.md#deletepyhssapnget) | **DELETE** /apn/{apn_id} | Delete all APN data for specified APN ID
*ApnApi* | [**getPyHssApnGet**](docs/ApnApi.md#getpyhssapnget) | **GET** /apn/{apn_id} | Get all APN data for specified APN ID
*ApnApi* | [**getPyHssOamAllApNs**](docs/ApnApi.md#getpyhssoamallapns) | **GET** /apn/list | Get all APNs
*ApnApi* | [**update APN Object**](docs/ApnApi.md#update apn object) | **PATCH** /apn/{apn_id} | Update APN data for specified APN ID
*AucApi* | [**create AUC Object**](docs/AucApi.md#create auc object) | **PUT** /auc/ | Create new AUC
*AucApi* | [**deletePyHssAucGet**](docs/AucApi.md#deletepyhssaucget) | **DELETE** /auc/{auc_id} | Delete all AUC data for specified AUC ID
*AucApi* | [**getPyHssAucAll**](docs/AucApi.md#getpyhssaucall) | **GET** /auc/list | Get all AuC Data (except keys)
*AucApi* | [**getPyHssAucGet**](docs/AucApi.md#getpyhssaucget) | **GET** /auc/{auc_id} | Get all AuC data for specified AuC ID
*AucApi* | [**getPyHssAucGetIccid**](docs/AucApi.md#getpyhssaucgeticcid) | **GET** /auc/iccid/{iccid} | Get all AuC data for specified ICCID
*AucApi* | [**getPyHssAucGetImsi**](docs/AucApi.md#getpyhssaucgetimsi) | **GET** /auc/imsi/{imsi} | Get all AuC data for specified IMSI
*AucApi* | [**update AUC Object**](docs/AucApi.md#update auc object) | **PATCH** /auc/{auc_id} | Update AuC data for specified AuC ID
*ChargingRuleApi* | [**create ChargingRule Object**](docs/ChargingRuleApi.md#create chargingrule object) | **PUT** /charging_rule/ | Create new ChargingRule
*ChargingRuleApi* | [**deletePyHssChargingRuleGet**](docs/ChargingRuleApi.md#deletepyhsschargingruleget) | **DELETE** /charging_rule/{charging_rule_id} | Delete all data for specified charging_rule_id
*ChargingRuleApi* | [**getPyHssChargingRuleAll**](docs/ChargingRuleApi.md#getpyhsschargingruleall) | **GET** /charging_rule/list | Get all Charging Rules
*ChargingRuleApi* | [**getPyHssChargingRuleGet**](docs/ChargingRuleApi.md#getpyhsschargingruleget) | **GET** /charging_rule/{charging_rule_id} | Get all Charging Rule data for specified charging_rule_id
*ChargingRuleApi* | [**update chargingRuleId Object**](docs/ChargingRuleApi.md#update chargingruleid object) | **PATCH** /charging_rule/{charging_rule_id} | Update charging_rule_id data for specified charging_rule_id
*EirApi* | [**create EIR Object**](docs/EirApi.md#create eir object) | **PUT** /eir/ | Create new EIR Rule
*EirApi* | [**deletePyHssEirGet**](docs/EirApi.md#deletepyhsseirget) | **DELETE** /eir/{eir_id} | Delete all data for specified eir_data
*EirApi* | [**deletePyHssEirHistory**](docs/EirApi.md#deletepyhsseirhistory) | **DELETE** /eir/eir_history/{attribute} | Get Delete for IMSI or IMEI
*EirApi* | [**getPyHssEirAll**](docs/EirApi.md#getpyhsseirall) | **GET** /eir/list | Get all EIR Rules
*EirApi* | [**getPyHssEirAllHistory**](docs/EirApi.md#getpyhsseirallhistory) | **GET** /eir/eir_history/list | Get EIR history for all subscribers
*EirApi* | [**getPyHssEirGet**](docs/EirApi.md#getpyhsseirget) | **GET** /eir/{eir_id} | Get all EIR data for specified eir_id
*EirApi* | [**getPyHssEirHistory**](docs/EirApi.md#getpyhsseirhistory) | **GET** /eir/eir_history/{attribute} | Get history for IMSI or IMEI
*EirApi* | [**getPyHssEirTac**](docs/EirApi.md#getpyhsseirtac) | **GET** /eir/lookup_imei/{imei} | Get Device Info from IMEI
*EirApi* | [**update eir Object**](docs/EirApi.md#update eir object) | **PATCH** /eir/{eir_id} | Update eir_id data for specified eir_id
*GeoredApi* | [**create ChargingRule Object**](docs/GeoredApi.md#create chargingrule object) | **PATCH** /geored/ | Get Geored data Pushed
*GeoredApi* | [**getPyHssGeored**](docs/GeoredApi.md#getpyhssgeored) | **GET** /geored/ | Return the active geored schema
*ImsSubscriberApi* | [**create IMS SUBSCRIBER Object**](docs/ImsSubscriberApi.md#create ims subscriber object) | **PUT** /ims_subscriber/ | Create new IMS SUBSCRIBER
*ImsSubscriberApi* | [**deletePyHssImsSubscriberGet**](docs/ImsSubscriberApi.md#deletepyhssimssubscriberget) | **DELETE** /ims_subscriber/{ims_subscriber_id} | Delete all data for specified ims_subscriber_id
*ImsSubscriberApi* | [**getPyHssImsSubscriberAll**](docs/ImsSubscriberApi.md#getpyhssimssubscriberall) | **GET** /ims_subscriber/list | Get all IMS Subscribers
*ImsSubscriberApi* | [**getPyHssImsSubscriberGet**](docs/ImsSubscriberApi.md#getpyhssimssubscriberget) | **GET** /ims_subscriber/{ims_subscriber_id} | Get all SUBSCRIBER data for specified ims_subscriber_id
*ImsSubscriberApi* | [**getPyHssImsSubscriberImsi**](docs/ImsSubscriberApi.md#getpyhssimssubscriberimsi) | **GET** /ims_subscriber/ims_subscriber_imsi/{imsi} | Get IMS data for imsi
*ImsSubscriberApi* | [**getPyHssImsSubscriberMsisdn**](docs/ImsSubscriberApi.md#getpyhssimssubscribermsisdn) | **GET** /ims_subscriber/ims_subscriber_msisdn/{msisdn} | Get IMS data for MSISDN
*ImsSubscriberApi* | [**update IMS SUBSCRIBER Object**](docs/ImsSubscriberApi.md#update ims subscriber object) | **PATCH** /ims_subscriber/{ims_subscriber_id} | Update IMS SUBSCRIBER data for specified ims_subscriber
*OamApi* | [**getPyHssOamPeers**](docs/OamApi.md#getpyhssoampeers) | **GET** /oam/diameter_peers | Get all Diameter Peers
*OamApi* | [**getPyHssOamPing**](docs/OamApi.md#getpyhssoamping) | **GET** /oam/ping | Ping the API to check if it&#39;s alive
*OamApi* | [**getPyHssOamReconcileIms**](docs/OamApi.md#getpyhssoamreconcileims) | **GET** /oam/reconcile/ims/{imsi} | Get current location of IMS Subscriber from all linked HSS nodes
*OamApi* | [**getPyHssOamRollbackLast**](docs/OamApi.md#getpyhssoamrollbacklast) | **GET** /oam/rollback_operation/last | Undo the last Insert/Update/Delete operation
*OamApi* | [**getPyHssOamRollbackLastTable**](docs/OamApi.md#getpyhssoamrollbacklasttable) | **GET** /oam/rollback_operation/{operation_id} | Undo the last Insert/Update/Delete operation for a given operation id
*OamApi* | [**getPyHssOamServingSubs**](docs/OamApi.md#getpyhssoamservingsubs) | **GET** /oam/serving_subs | Get all Subscribers served by HSS
*OamApi* | [**getPyHssOamServingSubsIms**](docs/OamApi.md#getpyhssoamservingsubsims) | **GET** /oam/serving_subs_ims | Get all Subscribers served by IMS
*OamApi* | [**getPyHssOamServingSubsPcrf**](docs/OamApi.md#getpyhssoamservingsubspcrf) | **GET** /oam/serving_subs_pcrf | Get all Subscribers served by PCRF
*OperationLogsApi* | [**getPyHssOperationLogLast**](docs/OperationLogsApi.md#getpyhssoperationloglast) | **GET** /operation_logs/last | Get the most recent Operation Log
*OperationLogsApi* | [**getPyHssOperationLogList**](docs/OperationLogsApi.md#getpyhssoperationloglist) | **GET** /operation_logs/list | Get all Operation Logs
*OperationLogsApi* | [**getPyHssOperationLogListTable**](docs/OperationLogsApi.md#getpyhssoperationloglisttable) | **GET** /operation_logs/list/table/{table_name} | Get all Operation Logs for a given table
*PcrfApi* | [**getPyHssOamGetPcrfSubscriber**](docs/PcrfApi.md#getpyhssoamgetpcrfsubscriber) | **GET** /pcrf/pcrf_subscriber_imsi/{imsi}/{apn_id} | Get PCRF data
*PcrfApi* | [**getPyHssOamGetPcrfSubscriberAllApn**](docs/PcrfApi.md#getpyhssoamgetpcrfsubscriberallapn) | **GET** /pcrf/pcrf_subscriber_imsi/{imsi} | Get PCRF Data for a Subscriber
*PcrfApi* | [**getPyHssPcrfComplete**](docs/PcrfApi.md#getpyhsspcrfcomplete) | **GET** /pcrf/{charging_rule_id} | Get full Charging Rule + TFTs
*PcrfApi* | [**getPyHssPcrfSubscriberRouting**](docs/PcrfApi.md#getpyhsspcrfsubscriberrouting) | **GET** /pcrf/subscriber_routing/{subscriber_routing} | Get Subscriber info from Subscriber Routing
*PcrfApi* | [**push Charging Rule to a Subscriber**](docs/PcrfApi.md#push charging rule to a subscriber) | **PUT** /pcrf/ | Push predefined Charging Rule to Subscriber
*PushApi* | [**push CLR (Cancel Location Request) to MME**](docs/PushApi.md#push clr (cancel location request) to mme) | **PUT** /push/clr/{imsi} | Push CLR (Cancel Location Request) to MME
*SubscriberApi* | [**create SUBSCRIBER Object**](docs/SubscriberApi.md#create subscriber object) | **PUT** /subscriber/ | Create new SUBSCRIBER
*SubscriberApi* | [**create Subscriber Routing Object**](docs/SubscriberApi.md#create subscriber routing object) | **PUT** /subscriber/routing/ | Create new Subscriber Routing Binding
*SubscriberApi* | [**deletePyHssSubscriberGet**](docs/SubscriberApi.md#deletepyhsssubscriberget) | **DELETE** /subscriber/{subscriber_id} | Delete all data for specified subscriber_id
*SubscriberApi* | [**deletePyHssSubscriberSubscriberRouting**](docs/SubscriberApi.md#deletepyhsssubscribersubscriberrouting) | **DELETE** /subscriber/routing/{subscriber_id}/{apn_id} | Delete Subscriber Routing binding for specified subscriber_id &amp; apn_id
*SubscriberApi* | [**getPyHssSubscriberAll**](docs/SubscriberApi.md#getpyhsssubscriberall) | **GET** /subscriber/list | Get all Subscribers
*SubscriberApi* | [**getPyHssSubscriberGet**](docs/SubscriberApi.md#getpyhsssubscriberget) | **GET** /subscriber/{subscriber_id} | Get all SUBSCRIBER data for specified subscriber_id
*SubscriberApi* | [**getPyHssSubscriberImsi**](docs/SubscriberApi.md#getpyhsssubscriberimsi) | **GET** /subscriber/imsi/{imsi} | Get data for IMSI
*SubscriberApi* | [**getPyHssSubscriberMsisdn**](docs/SubscriberApi.md#getpyhsssubscribermsisdn) | **GET** /subscriber/msisdn/{msisdn} | Get data for MSISDN
*SubscriberApi* | [**getPyHssSubscriberSubscriberRouting**](docs/SubscriberApi.md#getpyhsssubscribersubscriberrouting) | **GET** /subscriber/routing/{subscriber_id}/{apn_id} | Get Subscriber Routing for specified subscriber_id &amp; apn_id
*SubscriberApi* | [**update SUBSCRIBER Object**](docs/SubscriberApi.md#update subscriber object) | **PATCH** /subscriber/{subscriber_id} | Update SUBSCRIBER data for specified subscriber_id
*SubscriberApi* | [**update SUBSCRIBERROUTING Object**](docs/SubscriberApi.md#update subscriberrouting object) | **PATCH** /subscriber/routing/{subscriber_routing_id} | Update SUBSCRIBER data for specified subscriber_routing_id
*SubscriberAttributesApi* | [**create Attribute Object**](docs/SubscriberAttributesApi.md#create attribute object) | **PUT** /subscriber_attributes/ | Create new Attribute for Subscriber
*SubscriberAttributesApi* | [**deletePyHssAttributesGet**](docs/SubscriberAttributesApi.md#deletepyhssattributesget) | **DELETE** /subscriber_attributes/{subscriber_attributes_id} | Delete specified attribute ID
*SubscriberAttributesApi* | [**getPyHssAttributesGet**](docs/SubscriberAttributesApi.md#getpyhssattributesget) | **GET** /subscriber_attributes/{subscriber_id} | Get all attributes / values for specified Subscriber ID
*SubscriberAttributesApi* | [**getPyHssSubscriberAttributesAll**](docs/SubscriberAttributesApi.md#getpyhsssubscriberattributesall) | **GET** /subscriber_attributes/list | Get all Subscriber Attributes
*SubscriberAttributesApi* | [**update Attribute Object**](docs/SubscriberAttributesApi.md#update attribute object) | **PATCH** /subscriber_attributes/{subscriber_attributes_id} | Update data for specified attribute ID
*TftApi* | [**create TFT Object**](docs/TftApi.md#create tft object) | **PUT** /tft/ | Create new TFT
*TftApi* | [**deletePyHssTftGet**](docs/TftApi.md#deletepyhsstftget) | **DELETE** /tft/{tft_id} | Delete all data for specified tft_id
*TftApi* | [**getPyHssTftAll**](docs/TftApi.md#getpyhsstftall) | **GET** /tft/list | Get all TFTs
*TftApi* | [**getPyHssTftGet**](docs/TftApi.md#getpyhsstftget) | **GET** /tft/{tft_id} | Get all TFT data for specified tft_id
*TftApi* | [**update IMS tftId Object**](docs/TftApi.md#update ims tftid object) | **PATCH** /tft/{tft_id} | Update tft_id data for specified tft_id


## Documentation For Models

 - [APN JSON](docs/APN JSON.md)
 - [AUC JSON](docs/AUC JSON.md)
 - [CHARGING_RULE JSON](docs/CHARGING_RULE JSON.md)
 - [CLR](docs/CLR.md)
 - [EIR JSON](docs/EIR JSON.md)
 - [GeoRed](docs/GeoRed.md)
 - [IMS_SUBSCRIBER JSON](docs/IMS_SUBSCRIBER JSON.md)
 - [PCRF_Rule](docs/PCRF_Rule.md)
 - [SUBSCRIBER JSON](docs/SUBSCRIBER JSON.md)
 - [SUBSCRIBER_ATTRIBUTES JSON](docs/SUBSCRIBER_ATTRIBUTES JSON.md)
 - [SUBSCRIBER_ROUTING JSON](docs/SUBSCRIBER_ROUTING JSON.md)
 - [TFT JSON](docs/TFT JSON.md)


## Documentation For Authorization

 All endpoints do not require authorization.

