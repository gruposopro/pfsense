pkg add "https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-freebsd12-x86_64.pkg"
speedtest -y -y
#echo "#! /bin/bash

SPEEDTESTRESULT=$(speedtest -f json)


zabbix_sender -z 127.0.0.1 -s "GSF-QUARTZOMASSAS" -k speedtestX -o "$SPEEDTESTRESULT"" >> /speedtest.sh
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-squid
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-squidguard
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-cron
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-zabbix-agent5
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-zabbix-proxy5
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-openvpn-client-export
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-Lightsquid 
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-Service_Watchdog
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-snort


#wget https://raw.githubusercontent.com/arielvitoria155/pfsense/master/backup_padrao.xml
#cp backup_padrao.xml /conf/config.xml
fetch https://raw.githubusercontent.com/arielvitoria155/pfsense/master/sgerror.php
cp sgerror.php /usr/local/www/sgerror.php
rm -f sgerror.php

#echo "kern.vty = "sc"" >> /boot/loader.conf
