FROM debian:stable
RUN apt-get update && apt-get install -y php7.4 php7.4-fpm php7.4-mysqli curl && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    mkdir -p /var/www/ && mkdir -p /var/www/html && chmod -R 777 /var/www && apt-get install -y mariadb-client
COPY ./requirements/wordpress/conf/index.php /var/www/html/
COPY ./requirements/wordpress/conf/create_wp.sh /tmp/create_wp.sh
RUN chmod +x /tmp/create_wp.sh
CMD ["./tmp/create_wp.sh"]
