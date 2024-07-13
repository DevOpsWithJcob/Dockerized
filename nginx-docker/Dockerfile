FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install nginx zip openssl -y && \
    apt-get clean

COPY ./ssl_setup.sh /usr/local/bin/ssl_setup.sh

RUN chmod +x /usr/local/bin/ssl_setup.sh

RUN ./usr/local/bin/ssl_setup.sh

# Copy the default.conf file into the image
COPY nginx/sites-available/default /etc/nginx/sites-available/default

# Copy the nginx.conf file into the image
COPY nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./nginx/html /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80 443

# run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]


