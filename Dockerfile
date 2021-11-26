FROM php:7.4.26-apache

RUN set -ex; \
  docker-php-ext-install mysqli; \
  curl -o wordpress.tar.gz -fSL "https://es-mx.wordpress.org/latest-es_MX.tar.gz"; \
  tar -xzf wordpress.tar.gz -C /var/www/html; \
  rm wordpress.tar.gz; \
  chown -R www-data:www-data /var/www/html/wordpress

COPY ./multisite.htaccess /var/www/html/wordpress/.htaccess
COPY ./wp-config-sample.php /var/www/html/wordpress/wp-config.php

CMD ["apache2-foreground"]
