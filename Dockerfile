FROM devopsedu/webapp
ADD /root/projCert/website* /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
