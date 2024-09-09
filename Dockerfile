FROM ubuntu 
MAINTAINER rama
RUN apt update
RUN apt install -y nginx git
RUN rm -rf /var/www/html/* 
RUN  git clone  https://github.com/diranetafen/static-website-example.git  /var/www/html/ 
#ADD static-website-example/ /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]



