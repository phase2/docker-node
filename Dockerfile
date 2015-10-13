FROM phase2/servicebase:latest

RUN yum -y update && \
    yum -y install gcc-c++ git \
        https://rpm.nodesource.com/pub_4.x/el/7/x86_64/nodejs-4.2.0-1nodesource.el7.centos.x86_64.rpm && \
    yum clean all && \
    npm install -g npm@^2.14.7 && \
    npm install -g grunt-cli

EXPOSE 80

COPY root/ /

WORKDIR /code
