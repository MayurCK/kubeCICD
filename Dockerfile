FROM centos:7
RUN yum install nginx -y && sudo systemctl start nginx.service && sudo systemctl enable nginx.service
COPY html /usr/share/nginx/html
