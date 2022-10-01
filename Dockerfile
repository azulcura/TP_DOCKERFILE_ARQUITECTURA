FROM ubuntu:20.04
USER root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y apache2
RUN apt-get install -y curl
RUN apt-get install -y telnet
EXPOSE 80
WORKDIR /var/www/html
COPY . .
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
