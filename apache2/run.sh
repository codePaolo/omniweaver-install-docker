#!/bin/bash

source /etc/apache2/envvars && exec apache2 -D FOREGROUND

# mongoimport -d omniplatform_local -c roles omniplatform_local-roles.json
