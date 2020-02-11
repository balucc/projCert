FROM devopsedu/webapp
RUN rm -rf /var/www/html/*
ADD . /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
