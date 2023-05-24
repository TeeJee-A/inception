FROM debian:stable
RUN apt-get update && apt-get install -y php7.4 php7.4-fpm  php7.4-mysqli curl && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    mkdir -p /var/www/ && chmod -R 777 /var/www
COPY conf/create_wp.sh /tmp/create_wp.sh
RUN chmod +x /tmp/create_wp.sh
CMD ["./tmp/create_wp.sh"]
