FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/
COPY kubernetes/index.html /usr/share/nginx/html/
