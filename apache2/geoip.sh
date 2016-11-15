#!/bin/bash

apt-get update
apt-get -y install php5-geoip
mkdir /usr/local/share/GeoIP && cd /usr/share/local/GeoIP
curl -O 'http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz'
gunzip GeoLiteCity.dat.gz

mkdir /data/db
cd /var/www/html
mongorestore -d gsap_local dump/gsap_local
mongorestore -d omniplatform_local dump/omniplatform_local