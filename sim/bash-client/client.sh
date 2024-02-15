#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! swagger-codegen (https://github.com/swagger-api/swagger-codegen)
# ! FROM SWAGGER SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for Test Site - ca872358e4b0 - PyHSS OAM API.
#
# LICENSE:
# 
#
# CONTACT:
# 
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statemets
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["create APN Object:::payload"]=1
operation_parameters_minimum_occurrences["deletePyHssApnGet:::apn_id"]=1
operation_parameters_minimum_occurrences["getPyHssApnGet:::apn_id"]=1
operation_parameters_minimum_occurrences["getPyHssOamAllApNs:::page"]=0
operation_parameters_minimum_occurrences["getPyHssOamAllApNs:::page_size"]=0
operation_parameters_minimum_occurrences["update APN Object:::apn_id"]=1
operation_parameters_minimum_occurrences["update APN Object:::payload"]=1
operation_parameters_minimum_occurrences["create AUC Object:::payload"]=1
operation_parameters_minimum_occurrences["deletePyHssAucGet:::auc_id"]=1
operation_parameters_minimum_occurrences["getPyHssAucAll:::page"]=0
operation_parameters_minimum_occurrences["getPyHssAucAll:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssAucGet:::auc_id"]=1
operation_parameters_minimum_occurrences["getPyHssAucGetIccid:::iccid"]=1
operation_parameters_minimum_occurrences["getPyHssAucGetImsi:::imsi"]=1
operation_parameters_minimum_occurrences["update AUC Object:::auc_id"]=1
operation_parameters_minimum_occurrences["update AUC Object:::payload"]=1
operation_parameters_minimum_occurrences["create ChargingRule Object:::payload"]=1
operation_parameters_minimum_occurrences["deletePyHssChargingRuleGet:::charging_rule_id"]=1
operation_parameters_minimum_occurrences["getPyHssChargingRuleAll:::page"]=0
operation_parameters_minimum_occurrences["getPyHssChargingRuleAll:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssChargingRuleGet:::charging_rule_id"]=1
operation_parameters_minimum_occurrences["update chargingRuleId Object:::charging_rule_id"]=1
operation_parameters_minimum_occurrences["update chargingRuleId Object:::payload"]=1
operation_parameters_minimum_occurrences["create EIR Object:::payload"]=1
operation_parameters_minimum_occurrences["deletePyHssEirGet:::eir_id"]=1
operation_parameters_minimum_occurrences["deletePyHssEirHistory:::attribute"]=1
operation_parameters_minimum_occurrences["getPyHssEirAll:::page"]=0
operation_parameters_minimum_occurrences["getPyHssEirAll:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssEirAllHistory:::page"]=0
operation_parameters_minimum_occurrences["getPyHssEirAllHistory:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssEirGet:::eir_id"]=1
operation_parameters_minimum_occurrences["getPyHssEirHistory:::attribute"]=1
operation_parameters_minimum_occurrences["getPyHssEirTac:::imei"]=1
operation_parameters_minimum_occurrences["update eir Object:::eir_id"]=1
operation_parameters_minimum_occurrences["update eir Object:::payload"]=1
operation_parameters_minimum_occurrences["create ChargingRule Object:::payload"]=1
operation_parameters_minimum_occurrences["create IMS SUBSCRIBER Object:::payload"]=1
operation_parameters_minimum_occurrences["deletePyHssImsSubscriberGet:::ims_subscriber_id"]=1
operation_parameters_minimum_occurrences["getPyHssImsSubscriberAll:::page"]=0
operation_parameters_minimum_occurrences["getPyHssImsSubscriberAll:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssImsSubscriberGet:::ims_subscriber_id"]=1
operation_parameters_minimum_occurrences["getPyHssImsSubscriberImsi:::imsi"]=1
operation_parameters_minimum_occurrences["getPyHssImsSubscriberMsisdn:::msisdn"]=1
operation_parameters_minimum_occurrences["update IMS SUBSCRIBER Object:::ims_subscriber_id"]=1
operation_parameters_minimum_occurrences["update IMS SUBSCRIBER Object:::payload"]=1
operation_parameters_minimum_occurrences["getPyHssOamReconcileIms:::imsi"]=1
operation_parameters_minimum_occurrences["getPyHssOamRollbackLastTable:::operation_id"]=1
operation_parameters_minimum_occurrences["getPyHssOperationLogList:::page"]=0
operation_parameters_minimum_occurrences["getPyHssOperationLogList:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssOperationLogListTable:::table_name"]=1
operation_parameters_minimum_occurrences["getPyHssOperationLogListTable:::page"]=0
operation_parameters_minimum_occurrences["getPyHssOperationLogListTable:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssOamGetPcrfSubscriber:::imsi"]=1
operation_parameters_minimum_occurrences["getPyHssOamGetPcrfSubscriber:::apn_id"]=1
operation_parameters_minimum_occurrences["getPyHssOamGetPcrfSubscriberAllApn:::imsi"]=1
operation_parameters_minimum_occurrences["getPyHssPcrfComplete:::charging_rule_id"]=1
operation_parameters_minimum_occurrences["getPyHssPcrfSubscriberRouting:::subscriber_routing"]=1
operation_parameters_minimum_occurrences["push Charging Rule to a Subscriber:::payload"]=1
operation_parameters_minimum_occurrences["push CLR (Cancel Location Request) to MME:::imsi"]=1
operation_parameters_minimum_occurrences["push CLR (Cancel Location Request) to MME:::payload"]=1
operation_parameters_minimum_occurrences["create SUBSCRIBER Object:::payload"]=1
operation_parameters_minimum_occurrences["create Subscriber Routing Object:::payload"]=1
operation_parameters_minimum_occurrences["deletePyHssSubscriberGet:::subscriber_id"]=1
operation_parameters_minimum_occurrences["deletePyHssSubscriberSubscriberRouting:::subscriber_id"]=1
operation_parameters_minimum_occurrences["deletePyHssSubscriberSubscriberRouting:::apn_id"]=1
operation_parameters_minimum_occurrences["getPyHssSubscriberAll:::page"]=0
operation_parameters_minimum_occurrences["getPyHssSubscriberAll:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssSubscriberGet:::subscriber_id"]=1
operation_parameters_minimum_occurrences["getPyHssSubscriberImsi:::imsi"]=1
operation_parameters_minimum_occurrences["getPyHssSubscriberMsisdn:::msisdn"]=1
operation_parameters_minimum_occurrences["getPyHssSubscriberSubscriberRouting:::subscriber_id"]=1
operation_parameters_minimum_occurrences["getPyHssSubscriberSubscriberRouting:::apn_id"]=1
operation_parameters_minimum_occurrences["update SUBSCRIBER Object:::subscriber_id"]=1
operation_parameters_minimum_occurrences["update SUBSCRIBER Object:::payload"]=1
operation_parameters_minimum_occurrences["update SUBSCRIBERROUTING Object:::subscriber_routing_id"]=1
operation_parameters_minimum_occurrences["update SUBSCRIBERROUTING Object:::payload"]=1
operation_parameters_minimum_occurrences["create Attribute Object:::payload"]=1
operation_parameters_minimum_occurrences["deletePyHssAttributesGet:::subscriber_attributes_id"]=1
operation_parameters_minimum_occurrences["getPyHssAttributesGet:::subscriber_id"]=1
operation_parameters_minimum_occurrences["getPyHssSubscriberAttributesAll:::page"]=0
operation_parameters_minimum_occurrences["getPyHssSubscriberAttributesAll:::page_size"]=0
operation_parameters_minimum_occurrences["update Attribute Object:::subscriber_attributes_id"]=1
operation_parameters_minimum_occurrences["update Attribute Object:::payload"]=1
operation_parameters_minimum_occurrences["create TFT Object:::payload"]=1
operation_parameters_minimum_occurrences["deletePyHssTftGet:::tft_id"]=1
operation_parameters_minimum_occurrences["getPyHssTftAll:::page"]=0
operation_parameters_minimum_occurrences["getPyHssTftAll:::page_size"]=0
operation_parameters_minimum_occurrences["getPyHssTftGet:::tft_id"]=1
operation_parameters_minimum_occurrences["update IMS tftId Object:::tft_id"]=1
operation_parameters_minimum_occurrences["update IMS tftId Object:::payload"]=1

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["create APN Object:::payload"]=0
operation_parameters_maximum_occurrences["deletePyHssApnGet:::apn_id"]=0
operation_parameters_maximum_occurrences["getPyHssApnGet:::apn_id"]=0
operation_parameters_maximum_occurrences["getPyHssOamAllApNs:::page"]=0
operation_parameters_maximum_occurrences["getPyHssOamAllApNs:::page_size"]=0
operation_parameters_maximum_occurrences["update APN Object:::apn_id"]=0
operation_parameters_maximum_occurrences["update APN Object:::payload"]=0
operation_parameters_maximum_occurrences["create AUC Object:::payload"]=0
operation_parameters_maximum_occurrences["deletePyHssAucGet:::auc_id"]=0
operation_parameters_maximum_occurrences["getPyHssAucAll:::page"]=0
operation_parameters_maximum_occurrences["getPyHssAucAll:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssAucGet:::auc_id"]=0
operation_parameters_maximum_occurrences["getPyHssAucGetIccid:::iccid"]=0
operation_parameters_maximum_occurrences["getPyHssAucGetImsi:::imsi"]=0
operation_parameters_maximum_occurrences["update AUC Object:::auc_id"]=0
operation_parameters_maximum_occurrences["update AUC Object:::payload"]=0
operation_parameters_maximum_occurrences["create ChargingRule Object:::payload"]=0
operation_parameters_maximum_occurrences["deletePyHssChargingRuleGet:::charging_rule_id"]=0
operation_parameters_maximum_occurrences["getPyHssChargingRuleAll:::page"]=0
operation_parameters_maximum_occurrences["getPyHssChargingRuleAll:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssChargingRuleGet:::charging_rule_id"]=0
operation_parameters_maximum_occurrences["update chargingRuleId Object:::charging_rule_id"]=0
operation_parameters_maximum_occurrences["update chargingRuleId Object:::payload"]=0
operation_parameters_maximum_occurrences["create EIR Object:::payload"]=0
operation_parameters_maximum_occurrences["deletePyHssEirGet:::eir_id"]=0
operation_parameters_maximum_occurrences["deletePyHssEirHistory:::attribute"]=0
operation_parameters_maximum_occurrences["getPyHssEirAll:::page"]=0
operation_parameters_maximum_occurrences["getPyHssEirAll:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssEirAllHistory:::page"]=0
operation_parameters_maximum_occurrences["getPyHssEirAllHistory:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssEirGet:::eir_id"]=0
operation_parameters_maximum_occurrences["getPyHssEirHistory:::attribute"]=0
operation_parameters_maximum_occurrences["getPyHssEirTac:::imei"]=0
operation_parameters_maximum_occurrences["update eir Object:::eir_id"]=0
operation_parameters_maximum_occurrences["update eir Object:::payload"]=0
operation_parameters_maximum_occurrences["create ChargingRule Object:::payload"]=0
operation_parameters_maximum_occurrences["create IMS SUBSCRIBER Object:::payload"]=0
operation_parameters_maximum_occurrences["deletePyHssImsSubscriberGet:::ims_subscriber_id"]=0
operation_parameters_maximum_occurrences["getPyHssImsSubscriberAll:::page"]=0
operation_parameters_maximum_occurrences["getPyHssImsSubscriberAll:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssImsSubscriberGet:::ims_subscriber_id"]=0
operation_parameters_maximum_occurrences["getPyHssImsSubscriberImsi:::imsi"]=0
operation_parameters_maximum_occurrences["getPyHssImsSubscriberMsisdn:::msisdn"]=0
operation_parameters_maximum_occurrences["update IMS SUBSCRIBER Object:::ims_subscriber_id"]=0
operation_parameters_maximum_occurrences["update IMS SUBSCRIBER Object:::payload"]=0
operation_parameters_maximum_occurrences["getPyHssOamReconcileIms:::imsi"]=0
operation_parameters_maximum_occurrences["getPyHssOamRollbackLastTable:::operation_id"]=0
operation_parameters_maximum_occurrences["getPyHssOperationLogList:::page"]=0
operation_parameters_maximum_occurrences["getPyHssOperationLogList:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssOperationLogListTable:::table_name"]=0
operation_parameters_maximum_occurrences["getPyHssOperationLogListTable:::page"]=0
operation_parameters_maximum_occurrences["getPyHssOperationLogListTable:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssOamGetPcrfSubscriber:::imsi"]=0
operation_parameters_maximum_occurrences["getPyHssOamGetPcrfSubscriber:::apn_id"]=0
operation_parameters_maximum_occurrences["getPyHssOamGetPcrfSubscriberAllApn:::imsi"]=0
operation_parameters_maximum_occurrences["getPyHssPcrfComplete:::charging_rule_id"]=0
operation_parameters_maximum_occurrences["getPyHssPcrfSubscriberRouting:::subscriber_routing"]=0
operation_parameters_maximum_occurrences["push Charging Rule to a Subscriber:::payload"]=0
operation_parameters_maximum_occurrences["push CLR (Cancel Location Request) to MME:::imsi"]=0
operation_parameters_maximum_occurrences["push CLR (Cancel Location Request) to MME:::payload"]=0
operation_parameters_maximum_occurrences["create SUBSCRIBER Object:::payload"]=0
operation_parameters_maximum_occurrences["create Subscriber Routing Object:::payload"]=0
operation_parameters_maximum_occurrences["deletePyHssSubscriberGet:::subscriber_id"]=0
operation_parameters_maximum_occurrences["deletePyHssSubscriberSubscriberRouting:::subscriber_id"]=0
operation_parameters_maximum_occurrences["deletePyHssSubscriberSubscriberRouting:::apn_id"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberAll:::page"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberAll:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberGet:::subscriber_id"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberImsi:::imsi"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberMsisdn:::msisdn"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberSubscriberRouting:::subscriber_id"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberSubscriberRouting:::apn_id"]=0
operation_parameters_maximum_occurrences["update SUBSCRIBER Object:::subscriber_id"]=0
operation_parameters_maximum_occurrences["update SUBSCRIBER Object:::payload"]=0
operation_parameters_maximum_occurrences["update SUBSCRIBERROUTING Object:::subscriber_routing_id"]=0
operation_parameters_maximum_occurrences["update SUBSCRIBERROUTING Object:::payload"]=0
operation_parameters_maximum_occurrences["create Attribute Object:::payload"]=0
operation_parameters_maximum_occurrences["deletePyHssAttributesGet:::subscriber_attributes_id"]=0
operation_parameters_maximum_occurrences["getPyHssAttributesGet:::subscriber_id"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberAttributesAll:::page"]=0
operation_parameters_maximum_occurrences["getPyHssSubscriberAttributesAll:::page_size"]=0
operation_parameters_maximum_occurrences["update Attribute Object:::subscriber_attributes_id"]=0
operation_parameters_maximum_occurrences["update Attribute Object:::payload"]=0
operation_parameters_maximum_occurrences["create TFT Object:::payload"]=0
operation_parameters_maximum_occurrences["deletePyHssTftGet:::tft_id"]=0
operation_parameters_maximum_occurrences["getPyHssTftAll:::page"]=0
operation_parameters_maximum_occurrences["getPyHssTftAll:::page_size"]=0
operation_parameters_maximum_occurrences["getPyHssTftGet:::tft_id"]=0
operation_parameters_maximum_occurrences["update IMS tftId Object:::tft_id"]=0
operation_parameters_maximum_occurrences["update IMS tftId Object:::payload"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["create APN Object:::payload"]=""
operation_parameters_collection_type["deletePyHssApnGet:::apn_id"]=""
operation_parameters_collection_type["getPyHssApnGet:::apn_id"]=""
operation_parameters_collection_type["getPyHssOamAllApNs:::page"]=""
operation_parameters_collection_type["getPyHssOamAllApNs:::page_size"]=""
operation_parameters_collection_type["update APN Object:::apn_id"]=""
operation_parameters_collection_type["update APN Object:::payload"]=""
operation_parameters_collection_type["create AUC Object:::payload"]=""
operation_parameters_collection_type["deletePyHssAucGet:::auc_id"]=""
operation_parameters_collection_type["getPyHssAucAll:::page"]=""
operation_parameters_collection_type["getPyHssAucAll:::page_size"]=""
operation_parameters_collection_type["getPyHssAucGet:::auc_id"]=""
operation_parameters_collection_type["getPyHssAucGetIccid:::iccid"]=""
operation_parameters_collection_type["getPyHssAucGetImsi:::imsi"]=""
operation_parameters_collection_type["update AUC Object:::auc_id"]=""
operation_parameters_collection_type["update AUC Object:::payload"]=""
operation_parameters_collection_type["create ChargingRule Object:::payload"]=""
operation_parameters_collection_type["deletePyHssChargingRuleGet:::charging_rule_id"]=""
operation_parameters_collection_type["getPyHssChargingRuleAll:::page"]=""
operation_parameters_collection_type["getPyHssChargingRuleAll:::page_size"]=""
operation_parameters_collection_type["getPyHssChargingRuleGet:::charging_rule_id"]=""
operation_parameters_collection_type["update chargingRuleId Object:::charging_rule_id"]=""
operation_parameters_collection_type["update chargingRuleId Object:::payload"]=""
operation_parameters_collection_type["create EIR Object:::payload"]=""
operation_parameters_collection_type["deletePyHssEirGet:::eir_id"]=""
operation_parameters_collection_type["deletePyHssEirHistory:::attribute"]=""
operation_parameters_collection_type["getPyHssEirAll:::page"]=""
operation_parameters_collection_type["getPyHssEirAll:::page_size"]=""
operation_parameters_collection_type["getPyHssEirAllHistory:::page"]=""
operation_parameters_collection_type["getPyHssEirAllHistory:::page_size"]=""
operation_parameters_collection_type["getPyHssEirGet:::eir_id"]=""
operation_parameters_collection_type["getPyHssEirHistory:::attribute"]=""
operation_parameters_collection_type["getPyHssEirTac:::imei"]=""
operation_parameters_collection_type["update eir Object:::eir_id"]=""
operation_parameters_collection_type["update eir Object:::payload"]=""
operation_parameters_collection_type["create ChargingRule Object:::payload"]=""
operation_parameters_collection_type["create IMS SUBSCRIBER Object:::payload"]=""
operation_parameters_collection_type["deletePyHssImsSubscriberGet:::ims_subscriber_id"]=""
operation_parameters_collection_type["getPyHssImsSubscriberAll:::page"]=""
operation_parameters_collection_type["getPyHssImsSubscriberAll:::page_size"]=""
operation_parameters_collection_type["getPyHssImsSubscriberGet:::ims_subscriber_id"]=""
operation_parameters_collection_type["getPyHssImsSubscriberImsi:::imsi"]=""
operation_parameters_collection_type["getPyHssImsSubscriberMsisdn:::msisdn"]=""
operation_parameters_collection_type["update IMS SUBSCRIBER Object:::ims_subscriber_id"]=""
operation_parameters_collection_type["update IMS SUBSCRIBER Object:::payload"]=""
operation_parameters_collection_type["getPyHssOamReconcileIms:::imsi"]=""
operation_parameters_collection_type["getPyHssOamRollbackLastTable:::operation_id"]=""
operation_parameters_collection_type["getPyHssOperationLogList:::page"]=""
operation_parameters_collection_type["getPyHssOperationLogList:::page_size"]=""
operation_parameters_collection_type["getPyHssOperationLogListTable:::table_name"]=""
operation_parameters_collection_type["getPyHssOperationLogListTable:::page"]=""
operation_parameters_collection_type["getPyHssOperationLogListTable:::page_size"]=""
operation_parameters_collection_type["getPyHssOamGetPcrfSubscriber:::imsi"]=""
operation_parameters_collection_type["getPyHssOamGetPcrfSubscriber:::apn_id"]=""
operation_parameters_collection_type["getPyHssOamGetPcrfSubscriberAllApn:::imsi"]=""
operation_parameters_collection_type["getPyHssPcrfComplete:::charging_rule_id"]=""
operation_parameters_collection_type["getPyHssPcrfSubscriberRouting:::subscriber_routing"]=""
operation_parameters_collection_type["push Charging Rule to a Subscriber:::payload"]=""
operation_parameters_collection_type["push CLR (Cancel Location Request) to MME:::imsi"]=""
operation_parameters_collection_type["push CLR (Cancel Location Request) to MME:::payload"]=""
operation_parameters_collection_type["create SUBSCRIBER Object:::payload"]=""
operation_parameters_collection_type["create Subscriber Routing Object:::payload"]=""
operation_parameters_collection_type["deletePyHssSubscriberGet:::subscriber_id"]=""
operation_parameters_collection_type["deletePyHssSubscriberSubscriberRouting:::subscriber_id"]=""
operation_parameters_collection_type["deletePyHssSubscriberSubscriberRouting:::apn_id"]=""
operation_parameters_collection_type["getPyHssSubscriberAll:::page"]=""
operation_parameters_collection_type["getPyHssSubscriberAll:::page_size"]=""
operation_parameters_collection_type["getPyHssSubscriberGet:::subscriber_id"]=""
operation_parameters_collection_type["getPyHssSubscriberImsi:::imsi"]=""
operation_parameters_collection_type["getPyHssSubscriberMsisdn:::msisdn"]=""
operation_parameters_collection_type["getPyHssSubscriberSubscriberRouting:::subscriber_id"]=""
operation_parameters_collection_type["getPyHssSubscriberSubscriberRouting:::apn_id"]=""
operation_parameters_collection_type["update SUBSCRIBER Object:::subscriber_id"]=""
operation_parameters_collection_type["update SUBSCRIBER Object:::payload"]=""
operation_parameters_collection_type["update SUBSCRIBERROUTING Object:::subscriber_routing_id"]=""
operation_parameters_collection_type["update SUBSCRIBERROUTING Object:::payload"]=""
operation_parameters_collection_type["create Attribute Object:::payload"]=""
operation_parameters_collection_type["deletePyHssAttributesGet:::subscriber_attributes_id"]=""
operation_parameters_collection_type["getPyHssAttributesGet:::subscriber_id"]=""
operation_parameters_collection_type["getPyHssSubscriberAttributesAll:::page"]=""
operation_parameters_collection_type["getPyHssSubscriberAttributesAll:::page_size"]=""
operation_parameters_collection_type["update Attribute Object:::subscriber_attributes_id"]=""
operation_parameters_collection_type["update Attribute Object:::payload"]=""
operation_parameters_collection_type["create TFT Object:::payload"]=""
operation_parameters_collection_type["deletePyHssTftGet:::tft_id"]=""
operation_parameters_collection_type["getPyHssTftAll:::page"]=""
operation_parameters_collection_type["getPyHssTftAll:::page_size"]=""
operation_parameters_collection_type["getPyHssTftGet:::tft_id"]=""
operation_parameters_collection_type["update IMS tftId Object:::tft_id"]=""
operation_parameters_collection_type["update IMS tftId Object:::payload"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    local count=0
    for qparam in "${query_params[@]}"; do
        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

        if [[ -n "${parameter_values[*]}" ]]; then
            if [[ $((count++)) -gt 0 ]]; then
                query_request_part+="&"
            fi
        fi


        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'mutli' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}Test Site - ca872358e4b0 - PyHSS OAM API command line client (API version 1.0)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[apn]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create APN Object${OFF};Create new APN
  ${CYAN}deletePyHssApnGet${OFF};Delete all APN data for specified APN ID
  ${CYAN}getPyHssApnGet${OFF};Get all APN data for specified APN ID
  ${CYAN}getPyHssOamAllApNs${OFF};Get all APNs
  ${CYAN}update APN Object${OFF};Update APN data for specified APN ID
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[auc]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create AUC Object${OFF};Create new AUC
  ${CYAN}deletePyHssAucGet${OFF};Delete all AUC data for specified AUC ID
  ${CYAN}getPyHssAucAll${OFF};Get all AuC Data (except keys)
  ${CYAN}getPyHssAucGet${OFF};Get all AuC data for specified AuC ID
  ${CYAN}getPyHssAucGetIccid${OFF};Get all AuC data for specified ICCID
  ${CYAN}getPyHssAucGetImsi${OFF};Get all AuC data for specified IMSI
  ${CYAN}update AUC Object${OFF};Update AuC data for specified AuC ID
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[chargingRule]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create ChargingRule Object${OFF};Create new ChargingRule
  ${CYAN}deletePyHssChargingRuleGet${OFF};Delete all data for specified charging_rule_id
  ${CYAN}getPyHssChargingRuleAll${OFF};Get all Charging Rules
  ${CYAN}getPyHssChargingRuleGet${OFF};Get all Charging Rule data for specified charging_rule_id
  ${CYAN}update chargingRuleId Object${OFF};Update charging_rule_id data for specified charging_rule_id
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[eir]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create EIR Object${OFF};Create new EIR Rule
  ${CYAN}deletePyHssEirGet${OFF};Delete all data for specified eir_data
  ${CYAN}deletePyHssEirHistory${OFF};Get Delete for IMSI or IMEI
  ${CYAN}getPyHssEirAll${OFF};Get all EIR Rules
  ${CYAN}getPyHssEirAllHistory${OFF};Get EIR history for all subscribers
  ${CYAN}getPyHssEirGet${OFF};Get all EIR data for specified eir_id
  ${CYAN}getPyHssEirHistory${OFF};Get history for IMSI or IMEI
  ${CYAN}getPyHssEirTac${OFF};Get Device Info from IMEI
  ${CYAN}update eir Object${OFF};Update eir_id data for specified eir_id
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[geored]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create ChargingRule Object${OFF};Get Geored data Pushed
  ${CYAN}getPyHssGeored${OFF};Return the active geored schema
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[imsSubscriber]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create IMS SUBSCRIBER Object${OFF};Create new IMS SUBSCRIBER
  ${CYAN}deletePyHssImsSubscriberGet${OFF};Delete all data for specified ims_subscriber_id
  ${CYAN}getPyHssImsSubscriberAll${OFF};Get all IMS Subscribers
  ${CYAN}getPyHssImsSubscriberGet${OFF};Get all SUBSCRIBER data for specified ims_subscriber_id
  ${CYAN}getPyHssImsSubscriberImsi${OFF};Get IMS data for imsi
  ${CYAN}getPyHssImsSubscriberMsisdn${OFF};Get IMS data for MSISDN
  ${CYAN}update IMS SUBSCRIBER Object${OFF};Update IMS SUBSCRIBER data for specified ims_subscriber
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[oam]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getPyHssOamPeers${OFF};Get all Diameter Peers
  ${CYAN}getPyHssOamPing${OFF};Ping the API to check if it's alive
  ${CYAN}getPyHssOamReconcileIms${OFF};Get current location of IMS Subscriber from all linked HSS nodes
  ${CYAN}getPyHssOamRollbackLast${OFF};Undo the last Insert/Update/Delete operation
  ${CYAN}getPyHssOamRollbackLastTable${OFF};Undo the last Insert/Update/Delete operation for a given operation id
  ${CYAN}getPyHssOamServingSubs${OFF};Get all Subscribers served by HSS
  ${CYAN}getPyHssOamServingSubsIms${OFF};Get all Subscribers served by IMS
  ${CYAN}getPyHssOamServingSubsPcrf${OFF};Get all Subscribers served by PCRF
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[operationLogs]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getPyHssOperationLogLast${OFF};Get the most recent Operation Log
  ${CYAN}getPyHssOperationLogList${OFF};Get all Operation Logs
  ${CYAN}getPyHssOperationLogListTable${OFF};Get all Operation Logs for a given table
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[pcrf]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}getPyHssOamGetPcrfSubscriber${OFF};Get PCRF data
  ${CYAN}getPyHssOamGetPcrfSubscriberAllApn${OFF};Get PCRF Data for a Subscriber
  ${CYAN}getPyHssPcrfComplete${OFF};Get full Charging Rule + TFTs
  ${CYAN}getPyHssPcrfSubscriberRouting${OFF};Get Subscriber info from Subscriber Routing
  ${CYAN}push Charging Rule to a Subscriber${OFF};Push predefined Charging Rule to Subscriber
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[push]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}push CLR (Cancel Location Request) to MME${OFF};Push CLR (Cancel Location Request) to MME
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[subscriber]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create SUBSCRIBER Object${OFF};Create new SUBSCRIBER
  ${CYAN}create Subscriber Routing Object${OFF};Create new Subscriber Routing Binding
  ${CYAN}deletePyHssSubscriberGet${OFF};Delete all data for specified subscriber_id
  ${CYAN}deletePyHssSubscriberSubscriberRouting${OFF};Delete Subscriber Routing binding for specified subscriber_id & apn_id
  ${CYAN}getPyHssSubscriberAll${OFF};Get all Subscribers
  ${CYAN}getPyHssSubscriberGet${OFF};Get all SUBSCRIBER data for specified subscriber_id
  ${CYAN}getPyHssSubscriberImsi${OFF};Get data for IMSI
  ${CYAN}getPyHssSubscriberMsisdn${OFF};Get data for MSISDN
  ${CYAN}getPyHssSubscriberSubscriberRouting${OFF};Get Subscriber Routing for specified subscriber_id & apn_id
  ${CYAN}update SUBSCRIBER Object${OFF};Update SUBSCRIBER data for specified subscriber_id
  ${CYAN}update SUBSCRIBERROUTING Object${OFF};Update SUBSCRIBER data for specified subscriber_routing_id
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[subscriberAttributes]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create Attribute Object${OFF};Create new Attribute for Subscriber
  ${CYAN}deletePyHssAttributesGet${OFF};Delete specified attribute ID
  ${CYAN}getPyHssAttributesGet${OFF};Get all attributes / values for specified Subscriber ID
  ${CYAN}getPyHssSubscriberAttributesAll${OFF};Get all Subscriber Attributes
  ${CYAN}update Attribute Object${OFF};Update data for specified attribute ID
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[tft]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}create TFT Object${OFF};Create new TFT
  ${CYAN}deletePyHssTftGet${OFF};Delete all data for specified tft_id
  ${CYAN}getPyHssTftAll${OFF};Get all TFTs
  ${CYAN}getPyHssTftGet${OFF};Get all TFT data for specified tft_id
  ${CYAN}update IMS tftId Object${OFF};Update tft_id data for specified tft_id
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "

echo -e "              \\t\\t\\t\\t(e.g. 'https://127.0.0.1:8080')"
    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}Test Site - ca872358e4b0 - PyHSS OAM API command line client (API version 1.0)${OFF}"
    echo ""
    echo -e "License: "
    echo -e "Contact: "
    echo ""
read -r -d '' appdescription <<EOF

Restful API for working with PyHSS
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}Test Site - ca872358e4b0 - PyHSS OAM API command line client (API version 1.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for create APN Object operation
#
##############################################################################
print_create APN Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create APN Object - Create new APN${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssApnGet operation
#
##############################################################################
print_deletePyHssApnGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssApnGet - Delete all APN data for specified APN ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}apn_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: apn_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssApnGet operation
#
##############################################################################
print_getPyHssApnGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssApnGet - Get all APN data for specified APN ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}apn_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: apn_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamAllApNs operation
#
##############################################################################
print_getPyHssOamAllApNs_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamAllApNs - Get all APNs${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update APN Object operation
#
##############################################################################
print_update APN Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update APN Object - Update APN data for specified APN ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}apn_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: apn_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create AUC Object operation
#
##############################################################################
print_create AUC Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create AUC Object - Create new AUC${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssAucGet operation
#
##############################################################################
print_deletePyHssAucGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssAucGet - Delete all AUC data for specified AUC ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}auc_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: auc_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssAucAll operation
#
##############################################################################
print_getPyHssAucAll_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssAucAll - Get all AuC Data (except keys)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssAucGet operation
#
##############################################################################
print_getPyHssAucGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssAucGet - Get all AuC data for specified AuC ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}auc_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: auc_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssAucGetIccid operation
#
##############################################################################
print_getPyHssAucGetIccid_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssAucGetIccid - Get all AuC data for specified ICCID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}iccid${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: iccid=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssAucGetImsi operation
#
##############################################################################
print_getPyHssAucGetImsi_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssAucGetImsi - Get all AuC data for specified IMSI${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}imsi${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: imsi=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update AUC Object operation
#
##############################################################################
print_update AUC Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update AUC Object - Update AuC data for specified AuC ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}auc_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: auc_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create ChargingRule Object operation
#
##############################################################################
print_create ChargingRule Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create ChargingRule Object - Create new ChargingRule${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssChargingRuleGet operation
#
##############################################################################
print_deletePyHssChargingRuleGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssChargingRuleGet - Delete all data for specified charging_rule_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}charging_rule_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: charging_rule_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssChargingRuleAll operation
#
##############################################################################
print_getPyHssChargingRuleAll_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssChargingRuleAll - Get all Charging Rules${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssChargingRuleGet operation
#
##############################################################################
print_getPyHssChargingRuleGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssChargingRuleGet - Get all Charging Rule data for specified charging_rule_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}charging_rule_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: charging_rule_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update chargingRuleId Object operation
#
##############################################################################
print_update chargingRuleId Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update chargingRuleId Object - Update charging_rule_id data for specified charging_rule_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}charging_rule_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: charging_rule_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create EIR Object operation
#
##############################################################################
print_create EIR Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create EIR Object - Create new EIR Rule${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssEirGet operation
#
##############################################################################
print_deletePyHssEirGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssEirGet - Delete all data for specified eir_data${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}eir_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: eir_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssEirHistory operation
#
##############################################################################
print_deletePyHssEirHistory_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssEirHistory - Get Delete for IMSI or IMEI${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}attribute${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: attribute=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssEirAll operation
#
##############################################################################
print_getPyHssEirAll_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssEirAll - Get all EIR Rules${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssEirAllHistory operation
#
##############################################################################
print_getPyHssEirAllHistory_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssEirAllHistory - Get EIR history for all subscribers${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssEirGet operation
#
##############################################################################
print_getPyHssEirGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssEirGet - Get all EIR data for specified eir_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}eir_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: eir_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssEirHistory operation
#
##############################################################################
print_getPyHssEirHistory_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssEirHistory - Get history for IMSI or IMEI${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}attribute${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: attribute=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssEirTac operation
#
##############################################################################
print_getPyHssEirTac_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssEirTac - Get Device Info from IMEI${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}imei${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: imei=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update eir Object operation
#
##############################################################################
print_update eir Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update eir Object - Update eir_id data for specified eir_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}eir_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: eir_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create ChargingRule Object operation
#
##############################################################################
print_create ChargingRule Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create ChargingRule Object - Get Geored data Pushed${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssGeored operation
#
##############################################################################
print_getPyHssGeored_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssGeored - Return the active geored schema${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create IMS SUBSCRIBER Object operation
#
##############################################################################
print_create IMS SUBSCRIBER Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create IMS SUBSCRIBER Object - Create new IMS SUBSCRIBER${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssImsSubscriberGet operation
#
##############################################################################
print_deletePyHssImsSubscriberGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssImsSubscriberGet - Delete all data for specified ims_subscriber_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}ims_subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: ims_subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssImsSubscriberAll operation
#
##############################################################################
print_getPyHssImsSubscriberAll_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssImsSubscriberAll - Get all IMS Subscribers${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssImsSubscriberGet operation
#
##############################################################################
print_getPyHssImsSubscriberGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssImsSubscriberGet - Get all SUBSCRIBER data for specified ims_subscriber_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}ims_subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: ims_subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssImsSubscriberImsi operation
#
##############################################################################
print_getPyHssImsSubscriberImsi_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssImsSubscriberImsi - Get IMS data for imsi${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}imsi${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: imsi=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssImsSubscriberMsisdn operation
#
##############################################################################
print_getPyHssImsSubscriberMsisdn_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssImsSubscriberMsisdn - Get IMS data for MSISDN${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}msisdn${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: msisdn=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update IMS SUBSCRIBER Object operation
#
##############################################################################
print_update IMS SUBSCRIBER Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update IMS SUBSCRIBER Object - Update IMS SUBSCRIBER data for specified ims_subscriber${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}ims_subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: ims_subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamPeers operation
#
##############################################################################
print_getPyHssOamPeers_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamPeers - Get all Diameter Peers${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamPing operation
#
##############################################################################
print_getPyHssOamPing_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamPing - Ping the API to check if it's alive${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamReconcileIms operation
#
##############################################################################
print_getPyHssOamReconcileIms_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamReconcileIms - Get current location of IMS Subscriber from all linked HSS nodes${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}imsi${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: imsi=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamRollbackLast operation
#
##############################################################################
print_getPyHssOamRollbackLast_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamRollbackLast - Undo the last Insert/Update/Delete operation${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamRollbackLastTable operation
#
##############################################################################
print_getPyHssOamRollbackLastTable_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamRollbackLastTable - Undo the last Insert/Update/Delete operation for a given operation id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}operation_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: operation_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamServingSubs operation
#
##############################################################################
print_getPyHssOamServingSubs_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamServingSubs - Get all Subscribers served by HSS${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamServingSubsIms operation
#
##############################################################################
print_getPyHssOamServingSubsIms_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamServingSubsIms - Get all Subscribers served by IMS${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamServingSubsPcrf operation
#
##############################################################################
print_getPyHssOamServingSubsPcrf_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamServingSubsPcrf - Get all Subscribers served by PCRF${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOperationLogLast operation
#
##############################################################################
print_getPyHssOperationLogLast_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOperationLogLast - Get the most recent Operation Log${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOperationLogList operation
#
##############################################################################
print_getPyHssOperationLogList_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOperationLogList - Get all Operation Logs${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOperationLogListTable operation
#
##############################################################################
print_getPyHssOperationLogListTable_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOperationLogListTable - Get all Operation Logs for a given table${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}table_name${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: table_name=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamGetPcrfSubscriber operation
#
##############################################################################
print_getPyHssOamGetPcrfSubscriber_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamGetPcrfSubscriber - Get PCRF data${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}imsi${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: imsi=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}apn_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: apn_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssOamGetPcrfSubscriberAllApn operation
#
##############################################################################
print_getPyHssOamGetPcrfSubscriberAllApn_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssOamGetPcrfSubscriberAllApn - Get PCRF Data for a Subscriber${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}imsi${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: imsi=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssPcrfComplete operation
#
##############################################################################
print_getPyHssPcrfComplete_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssPcrfComplete - Get full Charging Rule + TFTs${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}charging_rule_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: charging_rule_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssPcrfSubscriberRouting operation
#
##############################################################################
print_getPyHssPcrfSubscriberRouting_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssPcrfSubscriberRouting - Get Subscriber info from Subscriber Routing${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_routing${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_routing=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for push Charging Rule to a Subscriber operation
#
##############################################################################
print_push Charging Rule to a Subscriber_help() {
    echo ""
    echo -e "${BOLD}${WHITE}push Charging Rule to a Subscriber - Push predefined Charging Rule to Subscriber${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for push CLR (Cancel Location Request) to MME operation
#
##############################################################################
print_push CLR (Cancel Location Request) to MME_help() {
    echo ""
    echo -e "${BOLD}${WHITE}push CLR (Cancel Location Request) to MME - Push CLR (Cancel Location Request) to MME${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}imsi${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: imsi=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create SUBSCRIBER Object operation
#
##############################################################################
print_create SUBSCRIBER Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create SUBSCRIBER Object - Create new SUBSCRIBER${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create Subscriber Routing Object operation
#
##############################################################################
print_create Subscriber Routing Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create Subscriber Routing Object - Create new Subscriber Routing Binding${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssSubscriberGet operation
#
##############################################################################
print_deletePyHssSubscriberGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssSubscriberGet - Delete all data for specified subscriber_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssSubscriberSubscriberRouting operation
#
##############################################################################
print_deletePyHssSubscriberSubscriberRouting_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssSubscriberSubscriberRouting - Delete Subscriber Routing binding for specified subscriber_id & apn_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}apn_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: apn_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssSubscriberAll operation
#
##############################################################################
print_getPyHssSubscriberAll_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssSubscriberAll - Get all Subscribers${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssSubscriberGet operation
#
##############################################################################
print_getPyHssSubscriberGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssSubscriberGet - Get all SUBSCRIBER data for specified subscriber_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssSubscriberImsi operation
#
##############################################################################
print_getPyHssSubscriberImsi_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssSubscriberImsi - Get data for IMSI${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}imsi${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: imsi=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssSubscriberMsisdn operation
#
##############################################################################
print_getPyHssSubscriberMsisdn_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssSubscriberMsisdn - Get data for MSISDN${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}msisdn${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: msisdn=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssSubscriberSubscriberRouting operation
#
##############################################################################
print_getPyHssSubscriberSubscriberRouting_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssSubscriberSubscriberRouting - Get Subscriber Routing for specified subscriber_id & apn_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}apn_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: apn_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update SUBSCRIBER Object operation
#
##############################################################################
print_update SUBSCRIBER Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update SUBSCRIBER Object - Update SUBSCRIBER data for specified subscriber_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update SUBSCRIBERROUTING Object operation
#
##############################################################################
print_update SUBSCRIBERROUTING Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update SUBSCRIBERROUTING Object - Update SUBSCRIBER data for specified subscriber_routing_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_routing_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_routing_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create Attribute Object operation
#
##############################################################################
print_create Attribute Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create Attribute Object - Create new Attribute for Subscriber${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssAttributesGet operation
#
##############################################################################
print_deletePyHssAttributesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssAttributesGet - Delete specified attribute ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_attributes_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_attributes_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssAttributesGet operation
#
##############################################################################
print_getPyHssAttributesGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssAttributesGet - Get all attributes / values for specified Subscriber ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssSubscriberAttributesAll operation
#
##############################################################################
print_getPyHssSubscriberAttributesAll_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssSubscriberAttributesAll - Get all Subscriber Attributes${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update Attribute Object operation
#
##############################################################################
print_update Attribute Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update Attribute Object - Update data for specified attribute ID${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}subscriber_attributes_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: subscriber_attributes_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for create TFT Object operation
#
##############################################################################
print_create TFT Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}create TFT Object - Create new TFT${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for deletePyHssTftGet operation
#
##############################################################################
print_deletePyHssTftGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}deletePyHssTftGet - Delete all data for specified tft_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tft_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: tft_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssTftAll operation
#
##############################################################################
print_getPyHssTftAll_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssTftAll - Get all TFTs${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}page${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - Page number for pagination${YELLOW} Specify as: page=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}page_size${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 200)${OFF} - Number of items per page for pagination${YELLOW} Specify as: page_size=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for getPyHssTftGet operation
#
##############################################################################
print_getPyHssTftGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}getPyHssTftGet - Get all TFT data for specified tft_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tft_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: tft_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for update IMS tftId Object operation
#
##############################################################################
print_update IMS tftId Object_help() {
    echo ""
    echo -e "${BOLD}${WHITE}update IMS tftId Object - Update tft_id data for specified tft_id${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}tft_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF}${OFF} -  ${YELLOW}Specify as: tft_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}body${OFF} ${BLUE}[application/json]${OFF} ${RED}(required)${OFF}${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call create APN Object operation
#
##############################################################################
call_create APN Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/apn/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deletePyHssApnGet operation
#
##############################################################################
call_deletePyHssApnGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(apn_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/apn/{apn_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssApnGet operation
#
##############################################################################
call_getPyHssApnGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(apn_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/apn/{apn_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamAllApNs operation
#
##############################################################################
call_getPyHssOamAllApNs() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/apn/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call update APN Object operation
#
##############################################################################
call_update APN Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(apn_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/apn/{apn_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call create AUC Object operation
#
##############################################################################
call_create AUC Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/auc/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deletePyHssAucGet operation
#
##############################################################################
call_deletePyHssAucGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(auc_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/auc/{auc_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssAucAll operation
#
##############################################################################
call_getPyHssAucAll() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/auc/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssAucGet operation
#
##############################################################################
call_getPyHssAucGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(auc_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/auc/{auc_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssAucGetIccid operation
#
##############################################################################
call_getPyHssAucGetIccid() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(iccid)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/auc/iccid/{iccid}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssAucGetImsi operation
#
##############################################################################
call_getPyHssAucGetImsi() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(imsi)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/auc/imsi/{imsi}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call update AUC Object operation
#
##############################################################################
call_update AUC Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(auc_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/auc/{auc_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call create ChargingRule Object operation
#
##############################################################################
call_create ChargingRule Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/charging_rule/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deletePyHssChargingRuleGet operation
#
##############################################################################
call_deletePyHssChargingRuleGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(charging_rule_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/charging_rule/{charging_rule_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssChargingRuleAll operation
#
##############################################################################
call_getPyHssChargingRuleAll() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/charging_rule/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssChargingRuleGet operation
#
##############################################################################
call_getPyHssChargingRuleGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(charging_rule_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/charging_rule/{charging_rule_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call update chargingRuleId Object operation
#
##############################################################################
call_update chargingRuleId Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(charging_rule_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/charging_rule/{charging_rule_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call create EIR Object operation
#
##############################################################################
call_create EIR Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/eir/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deletePyHssEirGet operation
#
##############################################################################
call_deletePyHssEirGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(eir_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/eir/{eir_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deletePyHssEirHistory operation
#
##############################################################################
call_deletePyHssEirHistory() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(attribute)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/eir/eir_history/{attribute}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssEirAll operation
#
##############################################################################
call_getPyHssEirAll() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/eir/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssEirAllHistory operation
#
##############################################################################
call_getPyHssEirAllHistory() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/eir/eir_history/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssEirGet operation
#
##############################################################################
call_getPyHssEirGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(eir_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/eir/{eir_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssEirHistory operation
#
##############################################################################
call_getPyHssEirHistory() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(attribute)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/eir/eir_history/{attribute}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssEirTac operation
#
##############################################################################
call_getPyHssEirTac() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(imei)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/eir/lookup_imei/{imei}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call update eir Object operation
#
##############################################################################
call_update eir Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(eir_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/eir/{eir_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call create ChargingRule Object operation
#
##############################################################################
call_create ChargingRule Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/geored/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getPyHssGeored operation
#
##############################################################################
call_getPyHssGeored() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/geored/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call create IMS SUBSCRIBER Object operation
#
##############################################################################
call_create IMS SUBSCRIBER Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/ims_subscriber/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deletePyHssImsSubscriberGet operation
#
##############################################################################
call_deletePyHssImsSubscriberGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(ims_subscriber_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/ims_subscriber/{ims_subscriber_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssImsSubscriberAll operation
#
##############################################################################
call_getPyHssImsSubscriberAll() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/ims_subscriber/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssImsSubscriberGet operation
#
##############################################################################
call_getPyHssImsSubscriberGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(ims_subscriber_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/ims_subscriber/{ims_subscriber_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssImsSubscriberImsi operation
#
##############################################################################
call_getPyHssImsSubscriberImsi() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(imsi)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/ims_subscriber/ims_subscriber_imsi/{imsi}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssImsSubscriberMsisdn operation
#
##############################################################################
call_getPyHssImsSubscriberMsisdn() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(msisdn)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/ims_subscriber/ims_subscriber_msisdn/{msisdn}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call update IMS SUBSCRIBER Object operation
#
##############################################################################
call_update IMS SUBSCRIBER Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(ims_subscriber_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/ims_subscriber/{ims_subscriber_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call getPyHssOamPeers operation
#
##############################################################################
call_getPyHssOamPeers() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/oam/diameter_peers" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamPing operation
#
##############################################################################
call_getPyHssOamPing() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/oam/ping" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamReconcileIms operation
#
##############################################################################
call_getPyHssOamReconcileIms() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(imsi)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/oam/reconcile/ims/{imsi}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamRollbackLast operation
#
##############################################################################
call_getPyHssOamRollbackLast() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/oam/rollback_operation/last" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamRollbackLastTable operation
#
##############################################################################
call_getPyHssOamRollbackLastTable() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(operation_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/oam/rollback_operation/{operation_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamServingSubs operation
#
##############################################################################
call_getPyHssOamServingSubs() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/oam/serving_subs" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamServingSubsIms operation
#
##############################################################################
call_getPyHssOamServingSubsIms() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/oam/serving_subs_ims" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamServingSubsPcrf operation
#
##############################################################################
call_getPyHssOamServingSubsPcrf() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/oam/serving_subs_pcrf" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOperationLogLast operation
#
##############################################################################
call_getPyHssOperationLogLast() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/operation_logs/last" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOperationLogList operation
#
##############################################################################
call_getPyHssOperationLogList() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/operation_logs/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOperationLogListTable operation
#
##############################################################################
call_getPyHssOperationLogListTable() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(table_name)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/operation_logs/list/table/{table_name}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamGetPcrfSubscriber operation
#
##############################################################################
call_getPyHssOamGetPcrfSubscriber() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(imsi apn_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/pcrf/pcrf_subscriber_imsi/{imsi}/{apn_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssOamGetPcrfSubscriberAllApn operation
#
##############################################################################
call_getPyHssOamGetPcrfSubscriberAllApn() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(imsi)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/pcrf/pcrf_subscriber_imsi/{imsi}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssPcrfComplete operation
#
##############################################################################
call_getPyHssPcrfComplete() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(charging_rule_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/pcrf/{charging_rule_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssPcrfSubscriberRouting operation
#
##############################################################################
call_getPyHssPcrfSubscriberRouting() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_routing)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/pcrf/subscriber_routing/{subscriber_routing}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call push Charging Rule to a Subscriber operation
#
##############################################################################
call_push Charging Rule to a Subscriber() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/pcrf/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call push CLR (Cancel Location Request) to MME operation
#
##############################################################################
call_push CLR (Cancel Location Request) to MME() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(imsi)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/push/clr/{imsi}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call create SUBSCRIBER Object operation
#
##############################################################################
call_create SUBSCRIBER Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call create Subscriber Routing Object operation
#
##############################################################################
call_create Subscriber Routing Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/routing/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deletePyHssSubscriberGet operation
#
##############################################################################
call_deletePyHssSubscriberGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/{subscriber_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call deletePyHssSubscriberSubscriberRouting operation
#
##############################################################################
call_deletePyHssSubscriberSubscriberRouting() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_id apn_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/routing/{subscriber_id}/{apn_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssSubscriberAll operation
#
##############################################################################
call_getPyHssSubscriberAll() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/subscriber/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssSubscriberGet operation
#
##############################################################################
call_getPyHssSubscriberGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/{subscriber_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssSubscriberImsi operation
#
##############################################################################
call_getPyHssSubscriberImsi() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(imsi)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/imsi/{imsi}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssSubscriberMsisdn operation
#
##############################################################################
call_getPyHssSubscriberMsisdn() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(msisdn)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/msisdn/{msisdn}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssSubscriberSubscriberRouting operation
#
##############################################################################
call_getPyHssSubscriberSubscriberRouting() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_id apn_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/routing/{subscriber_id}/{apn_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call update SUBSCRIBER Object operation
#
##############################################################################
call_update SUBSCRIBER Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/{subscriber_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call update SUBSCRIBERROUTING Object operation
#
##############################################################################
call_update SUBSCRIBERROUTING Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_routing_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber/routing/{subscriber_routing_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call create Attribute Object operation
#
##############################################################################
call_create Attribute Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber_attributes/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deletePyHssAttributesGet operation
#
##############################################################################
call_deletePyHssAttributesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_attributes_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber_attributes/{subscriber_attributes_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssAttributesGet operation
#
##############################################################################
call_getPyHssAttributesGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber_attributes/{subscriber_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssSubscriberAttributesAll operation
#
##############################################################################
call_getPyHssSubscriberAttributesAll() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/subscriber_attributes/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call update Attribute Object operation
#
##############################################################################
call_update Attribute Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(subscriber_attributes_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/subscriber_attributes/{subscriber_attributes_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call create TFT Object operation
#
##############################################################################
call_create TFT Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/tft/" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PUT"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}

##############################################################################
#
# Call deletePyHssTftGet operation
#
##############################################################################
call_deletePyHssTftGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tft_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/tft/{tft_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="DELETE"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssTftAll operation
#
##############################################################################
call_getPyHssTftAll() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(page page_size)
    local path

    if ! path=$(build_request_path "/tft/list" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call getPyHssTftGet operation
#
##############################################################################
call_getPyHssTftGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tft_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/tft/{tft_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call update IMS tftId Object operation
#
##############################################################################
call_update IMS tftId Object() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(tft_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/tft/{tft_id}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="PATCH"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    local body_json_curl=""

    #
    # Check if the user provided 'Content-type' headers in the
    # command line. If not try to set them based on the Swagger specification
    # if values produces and consumes are defined unambigously
    #
    if [[ -z $header_content_type ]]; then
        header_content_type="application/json"
    fi


    if [[ -z $header_content_type && "$force" = false ]]; then
        :
        echo "ERROR: Request's content-type not specified!!!"
        echo "This operation expects content-type in one of the following formats:"
        echo -e "\\t- application/json"
        echo ""
        echo "Use '--content-type' to set proper content type"
        exit 1
    else
        headers_curl="${headers_curl} -H 'Content-type: ${header_content_type}'"
    fi


    #
    # If we have received some body content over pipe, pass it from the
    # temporary file to cURL
    #
    if [[ -n $body_content_temp_file ]]; then
        if [[ "$print_curl" = true ]]; then
            echo "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        else
            eval "cat ${body_content_temp_file} | curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\" -d @-"
        fi
        rm "${body_content_temp_file}"
    #
    # If not, try to build the content body from arguments KEY==VALUE and KEY:=VALUE
    #
    else
        body_json_curl=$(body_parameters_to_json)
        if [[ "$print_curl" = true ]]; then
            echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        else
            eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} ${body_json_curl} \"${host}${path}\""
        fi
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    create APN Object)
    operation="create APN Object"
    ;;
    deletePyHssApnGet)
    operation="deletePyHssApnGet"
    ;;
    getPyHssApnGet)
    operation="getPyHssApnGet"
    ;;
    getPyHssOamAllApNs)
    operation="getPyHssOamAllApNs"
    ;;
    update APN Object)
    operation="update APN Object"
    ;;
    create AUC Object)
    operation="create AUC Object"
    ;;
    deletePyHssAucGet)
    operation="deletePyHssAucGet"
    ;;
    getPyHssAucAll)
    operation="getPyHssAucAll"
    ;;
    getPyHssAucGet)
    operation="getPyHssAucGet"
    ;;
    getPyHssAucGetIccid)
    operation="getPyHssAucGetIccid"
    ;;
    getPyHssAucGetImsi)
    operation="getPyHssAucGetImsi"
    ;;
    update AUC Object)
    operation="update AUC Object"
    ;;
    create ChargingRule Object)
    operation="create ChargingRule Object"
    ;;
    deletePyHssChargingRuleGet)
    operation="deletePyHssChargingRuleGet"
    ;;
    getPyHssChargingRuleAll)
    operation="getPyHssChargingRuleAll"
    ;;
    getPyHssChargingRuleGet)
    operation="getPyHssChargingRuleGet"
    ;;
    update chargingRuleId Object)
    operation="update chargingRuleId Object"
    ;;
    create EIR Object)
    operation="create EIR Object"
    ;;
    deletePyHssEirGet)
    operation="deletePyHssEirGet"
    ;;
    deletePyHssEirHistory)
    operation="deletePyHssEirHistory"
    ;;
    getPyHssEirAll)
    operation="getPyHssEirAll"
    ;;
    getPyHssEirAllHistory)
    operation="getPyHssEirAllHistory"
    ;;
    getPyHssEirGet)
    operation="getPyHssEirGet"
    ;;
    getPyHssEirHistory)
    operation="getPyHssEirHistory"
    ;;
    getPyHssEirTac)
    operation="getPyHssEirTac"
    ;;
    update eir Object)
    operation="update eir Object"
    ;;
    create ChargingRule Object)
    operation="create ChargingRule Object"
    ;;
    getPyHssGeored)
    operation="getPyHssGeored"
    ;;
    create IMS SUBSCRIBER Object)
    operation="create IMS SUBSCRIBER Object"
    ;;
    deletePyHssImsSubscriberGet)
    operation="deletePyHssImsSubscriberGet"
    ;;
    getPyHssImsSubscriberAll)
    operation="getPyHssImsSubscriberAll"
    ;;
    getPyHssImsSubscriberGet)
    operation="getPyHssImsSubscriberGet"
    ;;
    getPyHssImsSubscriberImsi)
    operation="getPyHssImsSubscriberImsi"
    ;;
    getPyHssImsSubscriberMsisdn)
    operation="getPyHssImsSubscriberMsisdn"
    ;;
    update IMS SUBSCRIBER Object)
    operation="update IMS SUBSCRIBER Object"
    ;;
    getPyHssOamPeers)
    operation="getPyHssOamPeers"
    ;;
    getPyHssOamPing)
    operation="getPyHssOamPing"
    ;;
    getPyHssOamReconcileIms)
    operation="getPyHssOamReconcileIms"
    ;;
    getPyHssOamRollbackLast)
    operation="getPyHssOamRollbackLast"
    ;;
    getPyHssOamRollbackLastTable)
    operation="getPyHssOamRollbackLastTable"
    ;;
    getPyHssOamServingSubs)
    operation="getPyHssOamServingSubs"
    ;;
    getPyHssOamServingSubsIms)
    operation="getPyHssOamServingSubsIms"
    ;;
    getPyHssOamServingSubsPcrf)
    operation="getPyHssOamServingSubsPcrf"
    ;;
    getPyHssOperationLogLast)
    operation="getPyHssOperationLogLast"
    ;;
    getPyHssOperationLogList)
    operation="getPyHssOperationLogList"
    ;;
    getPyHssOperationLogListTable)
    operation="getPyHssOperationLogListTable"
    ;;
    getPyHssOamGetPcrfSubscriber)
    operation="getPyHssOamGetPcrfSubscriber"
    ;;
    getPyHssOamGetPcrfSubscriberAllApn)
    operation="getPyHssOamGetPcrfSubscriberAllApn"
    ;;
    getPyHssPcrfComplete)
    operation="getPyHssPcrfComplete"
    ;;
    getPyHssPcrfSubscriberRouting)
    operation="getPyHssPcrfSubscriberRouting"
    ;;
    push Charging Rule to a Subscriber)
    operation="push Charging Rule to a Subscriber"
    ;;
    push CLR (Cancel Location Request) to MME)
    operation="push CLR (Cancel Location Request) to MME"
    ;;
    create SUBSCRIBER Object)
    operation="create SUBSCRIBER Object"
    ;;
    create Subscriber Routing Object)
    operation="create Subscriber Routing Object"
    ;;
    deletePyHssSubscriberGet)
    operation="deletePyHssSubscriberGet"
    ;;
    deletePyHssSubscriberSubscriberRouting)
    operation="deletePyHssSubscriberSubscriberRouting"
    ;;
    getPyHssSubscriberAll)
    operation="getPyHssSubscriberAll"
    ;;
    getPyHssSubscriberGet)
    operation="getPyHssSubscriberGet"
    ;;
    getPyHssSubscriberImsi)
    operation="getPyHssSubscriberImsi"
    ;;
    getPyHssSubscriberMsisdn)
    operation="getPyHssSubscriberMsisdn"
    ;;
    getPyHssSubscriberSubscriberRouting)
    operation="getPyHssSubscriberSubscriberRouting"
    ;;
    update SUBSCRIBER Object)
    operation="update SUBSCRIBER Object"
    ;;
    update SUBSCRIBERROUTING Object)
    operation="update SUBSCRIBERROUTING Object"
    ;;
    create Attribute Object)
    operation="create Attribute Object"
    ;;
    deletePyHssAttributesGet)
    operation="deletePyHssAttributesGet"
    ;;
    getPyHssAttributesGet)
    operation="getPyHssAttributesGet"
    ;;
    getPyHssSubscriberAttributesAll)
    operation="getPyHssSubscriberAttributesAll"
    ;;
    update Attribute Object)
    operation="update Attribute Object"
    ;;
    create TFT Object)
    operation="create TFT Object"
    ;;
    deletePyHssTftGet)
    operation="deletePyHssTftGet"
    ;;
    getPyHssTftAll)
    operation="getPyHssTftAll"
    ;;
    getPyHssTftGet)
    operation="getPyHssTftGet"
    ;;
    update IMS tftId Object)
    operation="update IMS tftId Object"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without qoutes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +\([^=]\):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    create APN Object)
    call_create APN Object
    ;;
    deletePyHssApnGet)
    call_deletePyHssApnGet
    ;;
    getPyHssApnGet)
    call_getPyHssApnGet
    ;;
    getPyHssOamAllApNs)
    call_getPyHssOamAllApNs
    ;;
    update APN Object)
    call_update APN Object
    ;;
    create AUC Object)
    call_create AUC Object
    ;;
    deletePyHssAucGet)
    call_deletePyHssAucGet
    ;;
    getPyHssAucAll)
    call_getPyHssAucAll
    ;;
    getPyHssAucGet)
    call_getPyHssAucGet
    ;;
    getPyHssAucGetIccid)
    call_getPyHssAucGetIccid
    ;;
    getPyHssAucGetImsi)
    call_getPyHssAucGetImsi
    ;;
    update AUC Object)
    call_update AUC Object
    ;;
    create ChargingRule Object)
    call_create ChargingRule Object
    ;;
    deletePyHssChargingRuleGet)
    call_deletePyHssChargingRuleGet
    ;;
    getPyHssChargingRuleAll)
    call_getPyHssChargingRuleAll
    ;;
    getPyHssChargingRuleGet)
    call_getPyHssChargingRuleGet
    ;;
    update chargingRuleId Object)
    call_update chargingRuleId Object
    ;;
    create EIR Object)
    call_create EIR Object
    ;;
    deletePyHssEirGet)
    call_deletePyHssEirGet
    ;;
    deletePyHssEirHistory)
    call_deletePyHssEirHistory
    ;;
    getPyHssEirAll)
    call_getPyHssEirAll
    ;;
    getPyHssEirAllHistory)
    call_getPyHssEirAllHistory
    ;;
    getPyHssEirGet)
    call_getPyHssEirGet
    ;;
    getPyHssEirHistory)
    call_getPyHssEirHistory
    ;;
    getPyHssEirTac)
    call_getPyHssEirTac
    ;;
    update eir Object)
    call_update eir Object
    ;;
    create ChargingRule Object)
    call_create ChargingRule Object
    ;;
    getPyHssGeored)
    call_getPyHssGeored
    ;;
    create IMS SUBSCRIBER Object)
    call_create IMS SUBSCRIBER Object
    ;;
    deletePyHssImsSubscriberGet)
    call_deletePyHssImsSubscriberGet
    ;;
    getPyHssImsSubscriberAll)
    call_getPyHssImsSubscriberAll
    ;;
    getPyHssImsSubscriberGet)
    call_getPyHssImsSubscriberGet
    ;;
    getPyHssImsSubscriberImsi)
    call_getPyHssImsSubscriberImsi
    ;;
    getPyHssImsSubscriberMsisdn)
    call_getPyHssImsSubscriberMsisdn
    ;;
    update IMS SUBSCRIBER Object)
    call_update IMS SUBSCRIBER Object
    ;;
    getPyHssOamPeers)
    call_getPyHssOamPeers
    ;;
    getPyHssOamPing)
    call_getPyHssOamPing
    ;;
    getPyHssOamReconcileIms)
    call_getPyHssOamReconcileIms
    ;;
    getPyHssOamRollbackLast)
    call_getPyHssOamRollbackLast
    ;;
    getPyHssOamRollbackLastTable)
    call_getPyHssOamRollbackLastTable
    ;;
    getPyHssOamServingSubs)
    call_getPyHssOamServingSubs
    ;;
    getPyHssOamServingSubsIms)
    call_getPyHssOamServingSubsIms
    ;;
    getPyHssOamServingSubsPcrf)
    call_getPyHssOamServingSubsPcrf
    ;;
    getPyHssOperationLogLast)
    call_getPyHssOperationLogLast
    ;;
    getPyHssOperationLogList)
    call_getPyHssOperationLogList
    ;;
    getPyHssOperationLogListTable)
    call_getPyHssOperationLogListTable
    ;;
    getPyHssOamGetPcrfSubscriber)
    call_getPyHssOamGetPcrfSubscriber
    ;;
    getPyHssOamGetPcrfSubscriberAllApn)
    call_getPyHssOamGetPcrfSubscriberAllApn
    ;;
    getPyHssPcrfComplete)
    call_getPyHssPcrfComplete
    ;;
    getPyHssPcrfSubscriberRouting)
    call_getPyHssPcrfSubscriberRouting
    ;;
    push Charging Rule to a Subscriber)
    call_push Charging Rule to a Subscriber
    ;;
    push CLR (Cancel Location Request) to MME)
    call_push CLR (Cancel Location Request) to MME
    ;;
    create SUBSCRIBER Object)
    call_create SUBSCRIBER Object
    ;;
    create Subscriber Routing Object)
    call_create Subscriber Routing Object
    ;;
    deletePyHssSubscriberGet)
    call_deletePyHssSubscriberGet
    ;;
    deletePyHssSubscriberSubscriberRouting)
    call_deletePyHssSubscriberSubscriberRouting
    ;;
    getPyHssSubscriberAll)
    call_getPyHssSubscriberAll
    ;;
    getPyHssSubscriberGet)
    call_getPyHssSubscriberGet
    ;;
    getPyHssSubscriberImsi)
    call_getPyHssSubscriberImsi
    ;;
    getPyHssSubscriberMsisdn)
    call_getPyHssSubscriberMsisdn
    ;;
    getPyHssSubscriberSubscriberRouting)
    call_getPyHssSubscriberSubscriberRouting
    ;;
    update SUBSCRIBER Object)
    call_update SUBSCRIBER Object
    ;;
    update SUBSCRIBERROUTING Object)
    call_update SUBSCRIBERROUTING Object
    ;;
    create Attribute Object)
    call_create Attribute Object
    ;;
    deletePyHssAttributesGet)
    call_deletePyHssAttributesGet
    ;;
    getPyHssAttributesGet)
    call_getPyHssAttributesGet
    ;;
    getPyHssSubscriberAttributesAll)
    call_getPyHssSubscriberAttributesAll
    ;;
    update Attribute Object)
    call_update Attribute Object
    ;;
    create TFT Object)
    call_create TFT Object
    ;;
    deletePyHssTftGet)
    call_deletePyHssTftGet
    ;;
    getPyHssTftAll)
    call_getPyHssTftAll
    ;;
    getPyHssTftGet)
    call_getPyHssTftGet
    ;;
    update IMS tftId Object)
    call_update IMS tftId Object
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
