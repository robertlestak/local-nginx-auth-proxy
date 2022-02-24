#!/bin/bash

/bin/bash -c "envsubst < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf.1 && mv /etc/nginx/nginx.conf.1 /etc/nginx/nginx.conf && nginx -g 'daemon off;'"