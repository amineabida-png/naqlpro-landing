FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

# Railway uses dynamic PORT env variable
RUN echo 'server { listen $PORT; location / { root /usr/share/nginx/html; index index.html; } }' > /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
