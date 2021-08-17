FROM nginx:latest
MAINTAINER Kir Gus
RUN apt-get update && \
    docker pull nginx
COPY index.html /usr/share/nginx/index.html
ADD http://localhost/index.html /usr/share/nginx/index.html
WORKDIR /usr/share/nginx
CMD [ "docker run -d -p 8000:80 -v ~/docke:/usr/share/nginx/html --name my-nginx nginx" ]
