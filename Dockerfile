FROM centos:7
RUN cat <<EOF > /etc/yum.repos.d/nginx.repo
[nginx] 
name=nginx repo 
baseurl=http://nginx.org/packages/mainline/<OS>/<OSRELEASE>/$basearch/
gpgcheck=0 
enabled=1 
EOF
RUN yum install nginx -y && sudo systemctl start nginx.service && sudo systemctl enable nginx.service
COPY html /usr/share/nginx/html
