FROM centos:7
RUN yum install epel-release && yum install nginx -y && systemctl start nginx.service && systemctl enable nginx.service
COPY html /usr/share/nginx/html
