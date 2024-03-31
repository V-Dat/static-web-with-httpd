# base image httpd latest from docker hub
FROM httpd

# copy static file index.html into /usr/local/apache2/htdocs/ as defined by httpd 
COPY  index.html /usr/local/apache2/htdocs/

COPY /w3images /usr/local/apache2/htdocs/w3images

# change owner to www-data
RUN chown www-data:www-data /usr/local/apache2/htdocs/index.html

# write log into file /var/log/httpd/access.log
ENV LOGFILE=/var/log/httpd/access.log

# expose port at 80 
EXPOSE 80

# start service httpd when container running  
CMD ["httpd-foreground"]