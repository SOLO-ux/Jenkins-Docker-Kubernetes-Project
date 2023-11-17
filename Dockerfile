
FROM nginx:alpine

RUN mkdir /usr/share/nginx/html/custom

COPY /kubernetes/main/webapp/index.html /usr/share/nginx/html/custom/
COPY /kubernetes/main/webapp/css /usr/share/nginx/html/custom/
COPY /kubernetes/main/webapp/images /usr/share/nginx/html/custom/
COPY /kubernetes/main/webapp/js /usr/share/nginx/html/custom/

