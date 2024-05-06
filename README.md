# docker_open5gs
Quite contrary to the name of the repository, this repository contains docker files to deploy an Over-The-Air (OTA) or RF simulated 4G/5G network using following projects:
- Core Network (4G/5G) - open5gs - https://github.com/open5gs/open5gs
- IMS (Only 4G supported i.e. VoLTE) - kamailio
- IMS HSS - https://github.com/nickvsnetworking/pyhss
- Osmocom HLR - https://github.com/osmocom/osmo-hlr
- Osmocom MSC - https://github.com/osmocom/osmo-msc
- srsRAN (4G/5G) - https://github.com/srsran/srsRAN
- UERANSIM (5G) - https://github.com/aligungr/UERANSIM

## Tested Setup

Docker host machine

- Ubuntu 20.04 or 22.04

Over-The-Air setups: 

- srsRAN (eNB/gNB) using Ettus USRP B210
- srsRAN eNB using LimeSDR Mini v1.3
- srsRAN eNB using LimeSDR-USB

RF simulated setups:

 - srsRAN (gNB + UE) simulation over ZMQ
 - UERANSIM (gNB + UE) simulator

## 5G SA with IMS deployment

The setup can be mainly deployed in two ways:

1. Single host setup where gNB and (5GC+IMS) are deployed on a single host machine
2. Multi host setup where gNB is deployed on a separate host machine than (5GC+IMS)

### Single Host setup configuration

Edit only the following parameters in **.env** as per your setup

```
NETWORKNAME
MCC
MNC
DOCKER_HOST_IP --> This is the IP address of the host running your docker setup
UE_IPV4_INTERNET --> Change this to your desired (Not conflicted) UE network ip range for internet APN
UE_IPV4_IMS --> Change this to your desired (Not conflicted) UE network ip range for ims APN
```

### Multihost setup configuration

###### On the host running the 5GC

Edit only the following parameters in **.env** as per your setup
```
NETWORKNAME
MCC
MNC
DOCKER_HOST_IP --> This is the IP address of the host running 5GC
UPF_ADVERTISE_IP --> Change this to value of DOCKER_HOST_IP
UE_IPV4_INTERNET --> Change this to your desired (Not conflicted) UE network ip range for internet APN
UE_IPV4_IMS --> Change this to your desired (Not conflicted) UE network ip range for ims APN
```

###### On the host running the gNB

Edit only the following parameters in **.env** as per your setup
```
MCC
MNC
DOCKER_HOST_IP --> This is the IP address of the host running gNB
AMF_IP --> Change this to IP address of host running 5GC
SRS_GNB_IP --> Change this to the IP address of the host running gNB
METRICS_SERVER_IP --> Change this to te IP address of the host running 5GC
```
### Network Deployment

###### 5G SA deployment (Single host setup)

```
# 5G Core Network
docker compose -f sa-vonr-deploy.yaml up

# 5G Core Network (Multihost setup)
docker compose -f sa-vonr-deploy-multihost.yaml up

# srsRAN gNB using SDR (OTA)
docker compose -f srsgnb.yaml up -d && docker container attach srsgnb
docker compose -f srsgnb.yaml up -d ; if($?) {docker container attach srsgnb}    # Windows Host

# UERANSIM gNB (RF simulated)
docker compose -f nr-gnb.yaml up -d && docker container attach nr_gnb
docker compose -f nr-gnb.yaml up -d ; if($?) {docker container attach nr_gnb}    # Windows Host

# UERANSIM NR-UE (RF simulated)
docker compose -f nr-ue.yaml up -d && docker container attach nr_ue
docker compose -f nr-ue.yaml up -d ; if($?) {docker container attach nr_ue}      # Windows Host
```

###### 5G SA deployment (Multihost setup)

```
# 5G Core Network
docker compose -f sa-vonr-deploy-multihost.yaml up

# srsRAN gNB using SDR (OTA)
docker compose -f srsgnb_multihost.yaml up -d && docker container attach srsgnb
docker compose -f srsgnb_multihost.yaml up -d ; if($?) {docker container attach srsgnb}    # Windows Host
```

### Provisioning of SIM information

In order to facilitate the process, there is a docker container that provisions 5GC and IMS with the data stored in `open5gs-dbconf` and `pyhss-dbconf` scripts.

```
# 5G Core Network
docker compose -f sa-vonr-deploy-config.yaml up    # Run only once
```

## Programming SIM cards

1. Install dependencies:

```
sudo apt-get install pcscd pcsc-tools libccid libpcsclite-dev python3-pyscard
```

2. Connect SIM card reader to your computer and insert programmable SIM card to the reader.

Check the status of connection by entering the command `pcsc_scan`:

```
$ pcsc_scan
PC/SC device scanner
V 1.5.2 (c) 2001-2017, Ludovic Rousseau <ludovic.rousseau@free.fr>
Using reader plug'n play mechanism
Scanning present readers...
0: HID Global OMNIKEY 3x21 Smart Card Reader [OMNIKEY 3x21 Smart Card Reader] 00

Sun May 26 14:26:12 2019
 Reader 0: HID Global OMNIKEY 3x21 Smart Card Reader [OMNIKEY 3x21 Smart Card Re
  Card state: Card inserted,
  ATR: 3B 9F 96 80 1F C7 80 31 A0 73 BE 21 13 67 43 20 07 18 00 00 01 A5
...
```

If SIM card reader is recognized then we can expect to print “Card inserted”.

3. Get the code of PySIM:

```
git clone https://gitea.osmocom.org/sim-card/pysim.git
```

Install dependencies:

```
sudo apt-get install --no-install-recommends \
	pcscd libpcsclite-dev \
	python3 \
	python3-setuptools \
	python3-pycryptodome \
	python3-pyscard \
	python3-pip
pip3 install --user -r requirements.txt
```

Now, you can read your card:

```
./pySim-read.py -p0
```

4. Program your cards by using `sim-program` script in sim's folder:

```
$ ./sim-program
pySIM and docker_open5gs must be in the same directory
Use: ./sim-program [options]
Options:
    card [IMSI last number (0-9)]
    coims install [IMSI last number (0-9)]	Install certificates to use CoIMS app
    coims list [IMSI last number (0-9)]		List of installed certificates on the SIM
    scan					Execute pcsc_scan
    help 					Shows pySim help
```

The script contains data from 10 sysmoISIM-SJA2 SIM cards:

| IMSI | ICCID | Ki | OPc | MSISDN | ADM1 |
|:---:|:---:|:---:|:---:|:---:|:---:|
| 999700000053530 | 8988211000000535305 | 1B7F04D495107F31E8DF29E5514F28CA | DD71BC1880AF9367E4A52ECABAC326FD | 0001110 | 85903454 |
| 999700000053531 | 8988211000000535313 | 58D702BE6603FA099D468D1296BC4072 | 46FB1EA4A7A571F9DCF3E2ABC58FC9FD | 0001111 | 42970400 |
| 999700000053532 | 8988211000000535321 | EFF1295624972C632BB70D7863A4FC9F | D97E5A24512DFAEDFE4EA3035AB8CFDE | 0001112 | 99089163 |
| 999700000053533 | 8988211000000535339 | C581839E3F6AB86EE564F74150BF5D28 | 02A9C1F2B246834BB64F023AA9595FDF | 0001113 | 95466357 |
| 999700000053534 | 8988211000000535347 | 804786B423891CF2A8FA8FBD45E9D237 | F006BC07EC19D737CE0D042F7BBE79AC | 0001114 | 67215927 |
| 999700000053535 | 8988211000000535354 | D1DACEF6CFDEFB4A7B5F7C3225C4D676 | 8A9EED3E44D4C835121142641E7F836C | 0001115 | 26323548 |
| 999700000053536 | 8988211000000535362 | 32364C8E8C9162E0BFC4FBD7AEADB4AE | 45F1BCC5F57668DEEC17C1D7B09C4811 | 0001116 | 98936148 |
| 999700000053537 | 8988211000000535370 | 95B2689668A3C24443CF45CB7781F066 | 577CB1FDAA2F8C39C4D7618D249C36E9 | 0001117 | 83173246 |
| 999700000053538 | 8988211000000535388 | 09498A36425BCE313DC932DEAC3D63CB | B8E26F33567C588E103D1BF5FE1F002D | 0001118 | 59879048 |
| 999700000053539 | 8988211000000535396 | E6E0652EA80C26E70F6F343BAB533C12 | C7D61C44E23706765D0457A21A1B803A | 0001119 | 50381267 |

Note: 
IMSI 999700000053530 is formed by:
´´´
| MCC  | 999        |
| MNC  | 70         |
| MSIN | 0000053530 |
´´´
So, each IMSI has to be changed if other MCC and MNC is used.

For example, this project works with MCC: 001 and MNC: 01.

Therefore, aboves IMSI will be: 001010000053530

## Building docker images

* Mandatory requirements:
	* [docker-ce](https://docs.docker.com/install/linux/docker-ce/ubuntu) - Version 22.0.5 or above
	* [docker compose](https://docs.docker.com/compose) - Version 2.14 or above


#### Clone repository and build base docker image of open5gs, kamailio, srsRAN_4G, srsRAN_Project, ueransim

```
# Build docker images for open5gs EPC/5GC components
git clone https://github.com/juanluss31/docker_open5gs
cd docker_open5gs/base
docker build --no-cache --force-rm -t docker_open5gs .

# Build docker images for kamailio IMS components
cd ../ims_base
docker build --no-cache --force-rm -t docker_kamailio .

# Build docker images for srsRAN_4G eNB + srsUE (4G+5G)
cd ../srslte
docker build --no-cache --force-rm -t docker_srslte .

# Build docker images for srsRAN_Project gNB
cd ../srsran
docker build --no-cache --force-rm -t docker_srsran .

# Build docker images for UERANSIM (gNB + UE)
cd ../ueransim
docker build --no-cache --force-rm -t docker_ueransim .
```

#### Build docker images for additional components

```
cd ..
set -a
source .env
sudo ufw disable
sudo sysctl -w net.ipv4.ip_forward=1
sudo cpupower frequency-set -g performance

# For 4G deployment only
docker compose -f 4g-volte-deploy.yaml build

# For 5G deployment only
docker compose -f sa-deploy.yaml build
```

## Network and deployment configuration

The setup can be mainly deployed in two ways:

1. Single host setup where eNB/gNB and (EPC+IMS)/5GC are deployed on a single host machine
2. Multi host setup where eNB/gNB is deployed on a separate host machine than (EPC+IMS)/5GC

### Single Host setup configuration
Edit only the following parameters in **.env** as per your setup

```
MCC
MNC
DOCKER_HOST_IP --> This is the IP address of the host running your docker setup
UE_IPV4_INTERNET --> Change this to your desired (Not conflicted) UE network ip range for internet APN
UE_IPV4_IMS --> Change this to your desired (Not conflicted) UE network ip range for ims APN
```

### Multihost setup configuration

#### 4G deployment

###### On the host running the (EPC+IMS)

Edit only the following parameters in **.env** as per your setup
```
MCC
MNC
DOCKER_HOST_IP --> This is the IP address of the host running (EPC+IMS)
SGWU_ADVERTISE_IP --> Change this to value of DOCKER_HOST_IP
UE_IPV4_INTERNET --> Change this to your desired (Not conflicted) UE network ip range for internet APN
UE_IPV4_IMS --> Change this to your desired (Not conflicted) UE network ip range for ims APN
```

Under **mme** section in docker compose file (**4g-volte-deploy.yaml**), uncomment the following part
```
...
    # ports:
    #   - "36412:36412/sctp"
...
```

Then, uncomment the following part under **sgwu** section
```
...
    # ports:
    #   - "2152:2152/udp"
...
```

###### On the host running the eNB

Edit only the following parameters in **.env** as per your setup
```
MCC
MNC
DOCKER_HOST_IP --> This is the IP address of the host running eNB
MME_IP --> Change this to IP address of host running (EPC+IMS)
SRS_ENB_IP --> Change this to the IP address of the host running eNB
```

Replace the following part in the docker compose file (**srsenb.yaml**)
```
    networks:
      default:
        ipv4_address: ${SRS_ENB_IP}
networks:
  default:
    external:
      name: docker_open5gs_default
```
with 
```
	network_mode: host
```

#### 5G SA deployment

###### On the host running the 5GC

Edit only the following parameters in **.env** as per your setup
```
MCC
MNC
DOCKER_HOST_IP --> This is the IP address of the host running 5GC
UPF_ADVERTISE_IP --> Change this to value of DOCKER_HOST_IP
UE_IPV4_INTERNET --> Change this to your desired (Not conflicted) UE network ip range for internet APN
UE_IPV4_IMS --> Change this to your desired (Not conflicted) UE network ip range for ims APN
```

Under **amf** section in docker compose file (**sa-deploy.yaml**), uncomment the following part
```
...
    # ports:
    #   - "38412:38412/sctp"
...
```

Then, uncomment the following part under **upf** section
```
...
    # ports:
    #   - "2152:2152/udp"
...
```

###### On the host running the gNB

Edit only the following parameters in **.env** as per your setup
```
MCC
MNC
DOCKER_HOST_IP --> This is the IP address of the host running gNB
AMF_IP --> Change this to IP address of host running 5GC
SRS_GNB_IP --> Change this to the IP address of the host running gNB
```

Replace the following part in the docker compose file (**srsgnb.yaml**)
```
    networks:
      default:
        ipv4_address: ${SRS_GNB_IP}
networks:
  default:
    external:
      name: docker_open5gs_default
```
with 
```
	network_mode: host
```

## Network Deployment

###### 4G deployment

```
# 4G Core Network + IMS + SMS over SGs
docker compose -f 4g-volte-deploy.yaml up

# srsRAN eNB using SDR (OTA)
docker compose -f srsenb.yaml up -d && docker container attach srsenb

# srsRAN ZMQ eNB (RF simulated)
docker compose -f srsenb_zmq.yaml up -d && docker container attach srsenb_zmq

# srsRAN ZMQ 4G UE (RF simulated)
docker compose -f srsue_zmq.yaml up -d && docker container attach srsue_zmq
```

###### 5G SA deployment

```
# 5G Core Network
docker compose -f sa-deploy.yaml up

# srsRAN gNB using SDR (OTA)
docker compose -f srsgnb.yaml up -d && docker container attach srsgnb

# srsRAN ZMQ gNB (RF simulated)
docker compose -f srsgnb_zmq.yaml up -d && docker container attach srsgnb_zmq

# srsRAN ZMQ 5G UE (RF simulated)
docker compose -f srsue_5g_zmq.yaml up -d && docker container attach srsue_5g_zmq

# UERANSIM gNB (RF simulated)
docker compose -f nr-gnb.yaml up -d && docker container attach nr_gnb

# UERANSIM NR-UE (RF simulated)
docker compose -f nr-ue.yaml up -d && docker container attach nr_ue
```

## Provisioning of SIM information

### Provisioning of SIM information in open5gs HSS as follows:

Open (http://<DOCKER_HOST_IP>:9999) in a web browser, where <DOCKER_HOST_IP> is the IP of the machine/VM running the open5gs containers. Login with following credentials
```
Username : admin
Password : 1423
```

Using Web UI, add a subscriber

### Provisioning of IMSI and MSISDN with OsmoHLR as follows:

1. First, login to the osmohlr container

```
docker exec -it osmohlr /bin/bash
```

2. Then, telnet to localhost

```
$ telnet localhost 4258

OsmoHLR> enable
OsmoHLR#
```

3. Finally, register the subscriber information as in following example:

```
OsmoHLR# subscriber imsi 001010123456790 create
OsmoHLR# subscriber imsi 001010123456790 update msisdn 9076543210
```

**Replace IMSI and MSISDN as per your programmed SIM**


### Provisioning of SIM information in pyHSS is as follows:

1. Goto http://<DOCKER_HOST_IP>:8080/docs/
2. Select **apn** -> **Create new APN** -> Press on **Try it out**. Then, in payload section use the below JSON and then press **Execute**

```
{
  "apn": "internet",
  "apn_ambr_dl": 0,
  "apn_ambr_ul": 0
}
```

Take note of **apn_id** specified in **Response body** under **Server response** for **internet** APN

Repeat creation step for following payload

```
{
  "apn": "ims",
  "apn_ambr_dl": 0,
  "apn_ambr_ul": 0
}
```

Take note of **apn_id** specified in **Response body** under **Server response** for **ims** APN

**Execute this step of APN creation only once**

3. Next, select **auc** -> **Create new AUC** -> Press on **Try it out**. Then, in payload section use the below example JSON to fill in ki, opc and amf for your SIM and then press **Execute**

```
{
  "ki": "8baf473f2f8fd09487cccbd7097c6862",
  "opc": "8E27B6AF0E692E750F32667A3B14605D",
  "amf": "8000",
  "sqn": 0,
  "imsi": "001010123456790"
}
```

Take note of **auc_id** specified in **Response body** under **Server response**

**Replace imsi, ki, opc and amf as per your programmed SIM**

4. Next, select **subscriber** -> **Create new SUBSCRIBER** -> Press on **Try it out**. Then, in payload section use the below example JSON to fill in imsi, auc_id and apn_list for your SIM and then press **Execute**

```
{
  "imsi": "001010123456790",
  "enabled": true,
  "auc_id": 1,
  "default_apn": 1,
  "apn_list": "1,2",
  "msisdn": "9076543210",
  "ue_ambr_dl": 0,
  "ue_ambr_ul": 0
}
```

- **auc_id** is the ID of the **AUC** created in the previous steps
- **default_apn** is the ID of the **internet** APN created in the previous steps
- **apn_list** is the comma separated list of APN IDs allowed for the UE i.e. APN ID for **internet** and **ims** APN created in the previous steps

**Replace imsi and msisdn as per your programmed SIM**

5. Finally, select **ims_subscriber** -> **Create new IMS SUBSCRIBER** -> Press on **Try it out**. Then, in payload section use the below example JSON to fill in imsi, msisdn, msisdn_list, scscf_peer, scscf_realm and scscf for your SIM/deployment and then press **Execute**

```
{
    "imsi": "001010123456790",
    "msisdn": "9076543210",
    "sh_profile": "string",
    "scscf_peer": "scscf.ims.mnc001.mcc001.3gppnetwork.org",
    "msisdn_list": "[9076543210]",
    "ifc_path": "default_ifc.xml",
    "scscf": "sip:scscf.ims.mnc001.mcc001.3gppnetwork.org:6060",
    "scscf_realm": "ims.mnc001.mcc001.3gppnetwork.org"
}
```

**Replace imsi, msisdn and msisdn_list as per your programmed SIM**

**Replace scscf_peer, scscf and scscf_realm as per your deployment**

## Not supported
- IPv6 usage in Docker
