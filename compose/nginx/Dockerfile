FROM nginx:1.10.1

RUN echo "upstream php-upstream { server application:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN rm -f /etc/nginx/conf.d/default.conf
ADD pumpic.conf /etc/nginx/conf.d/

WORKDIR /code