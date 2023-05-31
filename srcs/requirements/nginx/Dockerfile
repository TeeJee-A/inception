FROM debian:stable
WORKDIR /etc/nginx
RUN apt-get update && apt-get install -y nginx openssl && \
    cp /var/www/html/index.nginx-debian.html /var/www/html/index.html && \
    openssl req -new -newkey rsa:2048 -nodes -keyout ataji.42.fr.key -out ataji.42.fr.csr -subj "/CN=ataji.42.fr.com/O=ataji.42.fr/C=US" && \
    openssl x509 -req -days 365 -in ataji.42.fr.csr -signkey ataji.42.fr.key -out ataji.42.fr.crt
COPY tools/index.php /var/www/html/
COPY conf/nginx.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]