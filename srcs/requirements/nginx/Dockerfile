FROM debian:bullseye
WORKDIR /etc/nginx
RUN apt-get update && apt-get install -y nginx curl ca-certificates
RUN cp /var/www/html/index.nginx-debian.html /var/www/html/index.html
RUN curl -LO https://github.com/FiloSottile/mkcert/releases/download/v1.4.4/mkcert-v1.4.4-linux-amd64
RUN chmod +x mkcert-v1.4.4-linux-amd64 && mv mkcert-v1.4.4-linux-amd64 mkcert
RUN mv mkcert /usr/local/bin/ && mkcert -install
RUN mkcert -key-file ataji.42.fr.key -cert-file ataji.42.fr.crt ataji.42.fr
COPY ./requirements/nginx/conf/nginx.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]
