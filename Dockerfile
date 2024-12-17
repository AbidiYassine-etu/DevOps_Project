FROM centos:latest
LABEL author = abidiyassine@outlook.com
RUN yum install -y httpd \
zip\
unzip 
COPY photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip 
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD [ "/usr/sbin/httpd", "-D" , "FOREGROUND" ]
EXPOSE 80 22