FROM nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf

COPY ./schildichat-web /usr/share/nginx/html/
COPY ./config.json /usr/share/nginx/html/config.json
