#!/bin/bash

# Create a directory to store SSL certificates
mkdir -p /etc/nginx/ssl

# Copy SSL certificate and key to the directory
# You would normally get these from a secure location
# For example purposes, we're generating a self-signed certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout /etc/nginx/ssl/certificate.key \
  -out /etc/nginx/ssl/certificate.crt \
  -subj "/C=IR/ST=Tehran/L=Tehran/O=Fidar/OU=Operation/CN=localhost"
