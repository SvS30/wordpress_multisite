#! /bin/bash

docker exec -t wp-multi sed "127 a define('MULTISITE', true);" -i wordpress/wp-config.php
docker exec -t wp-multi sed "128 a define('SUBDOMAIN_INSTALL', false);" -i wordpress/wp-config.php
docker exec -t wp-multi sed "129 a define('DOMAIN_CURRENT_SITE', 'localhost');" -i wordpress/wp-config.php
docker exec -t wp-multi sed "130 a define('PATH_CURRENT_SITE', '/wordpress/');" -i wordpress/wp-config.php
docker exec -t wp-multi sed "131 a define('SITE_ID_CURRENT_SITE', 1);" -i wordpress/wp-config.php
docker exec -t wp-multi sed "132 a define('BLOG_ID_CURRENT_SITE', 1);" -i wordpress/wp-config.php
