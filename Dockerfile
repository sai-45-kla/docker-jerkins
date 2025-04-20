FROM ubuntu
RUN apt-get update -y
RUN apt-get install  apache2 -y
RUN systemctl start apache2
COPY index.html /var/www/html
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
EXPOSE 9092
