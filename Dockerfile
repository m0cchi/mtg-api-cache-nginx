FROM nginx:1.21.6

ADD ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

RUN nginx -t

