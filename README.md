
## Overview

This dockerfile allows you to build a container the OmniWeaver application that use Mongo as a Data store.


## Components

- Base: Ubuntu 14.04
- PHP: 5.5x
- Mongo PHP driver (PECL install): 1.5x
- GeoIP PHP driver (PECL install) + GeoIP Database
- PHP composer
- MongoDB 2.6 binaries 
- Apache 2.4.7 with 'mod_rewrite','mod_proxy','mod_proxy_http','mod_headers','mod_deflate','mod_expires','mod_filter' ENABLED


## Running & Building
### Using this container as a base 
Use this container as a base for the application. 
- Need to manually install geoIP+database
- Need to create /data/db for MongoDB

Below is an example Dockerfile in which we add a VHost to the apache config:

	FROM omniPaolo/omniweaver-install-docker:latest

    ADD MyVhost.conf /etc/apache2/sites-enabled/

    CMD ["/run.sh"]
    
### Running
    
    git clone https://github.com/omniPaolo/apache-php-mongo-phalcon-docker

	docker build -t omni-01 .

	docker run -d -p 8080:80 -v /Applications/mampstack-5.6.27-0/apache2/htdocs:/var/www/html omni-01

	docker ps

	docker exec -t -i 7cfbf6f93a14 /bin/bash

## Copyright
OmniPlatform 2016. Released under the Apache 2.0 License