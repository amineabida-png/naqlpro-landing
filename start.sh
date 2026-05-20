#!/bin/sh
PORT=${PORT:-8080}
cat > /etc/nginx/conf.d/default.conf << NGINX
server {
    listen ${PORT};
    root /usr/share/nginx/html;
    index index.html;
    location / {
        try_files \$uri \$uri/ /index.html;
    }
}
NGINX
nginx -g 'daemon off;'
