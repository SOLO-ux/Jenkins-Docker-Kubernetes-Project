
FROM nginx:alpine

RUN mkdir /usr/share/nginx/html/custom

COPY /kubernetes/src/main/webapp/index.html /usr/share/nginx/html/custom/
