#!/bin/bash
 
printf "\033[32mAdding subscribers to Open5gs core DB\n\n\n\033[0m"
./mnt/firstrun/open5gs-dbconf --db_uri=$MONGO_IP/open5gs add all

printf "\033[32mConfiguring pyHSS DB\n\n\033[0m"

printf "\033[35m\nAdding APN internet\n\033[0m"
./mnt/firstrun/pyhss-dbconf --db_ip=$PYHSS_IP apn put internet
printf "\033[35m\nAdding APN ims\n\033[0m"
./mnt/firstrun/pyhss-dbconf --db_ip=$PYHSS_IP apn put ims

for i in {0..9}
do
printf "\033[35m\nAdding auc for SIM $i\n\033[0m"
./mnt/firstrun/pyhss-dbconf --db_ip=$PYHSS_IP auc put $i
printf "\033[35m\nAdding subscriber for SIM $i\n\033[0m"
./mnt/firstrun/pyhss-dbconf --db_ip=$PYHSS_IP subscriber put $i
printf "\033[35m\nAdding ims_subscriber for SIM $i\n\033[0m"
./mnt/firstrun/pyhss-dbconf --db_ip=$PYHSS_IP ims_subscriber put $i
done

printf "\033[1;32m\nDONE\n\n\033[0m"
