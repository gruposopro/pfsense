pkg install wget
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-squid
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-squidguard
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-cron
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-zabbix-agent5 
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-zabbix-proxy5
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-openvpn-client-export
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-Lightsquid 
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-Service_Watchdog
env ASSUME_ALWAYS_YES=YES pkg install pfsense-pkg-snort
pkg add "https://install.speedtest.net/app/cli/ookla-speedtest-1.1.1-freebsd12-x86_64.pkg"


#wget https://raw.githubusercontent.com/arielvitoria155/pfsense/master/backup_padrao.xml
#cp backup_padrao.xml /conf/config.xml
wget https://raw.githubusercontent.com/arielvitoria155/pfsense/master/sgerror.php
cp sgerror.php /usr/local/www/sgerror.php
rm -f sgerror.php

#echo "kern.vty = "sc"" >> /boot/loader.conf
