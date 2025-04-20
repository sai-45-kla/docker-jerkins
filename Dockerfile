FROM ubuntu
RUN apt-get update -y
RUN apt-get install  apache2 -y
RUN systemctl start apache2
RUN /etc/init.d/apache2 start
COPY index.html /var/www/html
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
EXPOSE 9092
