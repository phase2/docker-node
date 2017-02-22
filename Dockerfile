FROM outrigger/servicebase

ENV NODE_VERSION=4.8.0

RUN yum -y update && \
    yum -y install gcc-c++ git \
        https://rpm.nodesource.com/pub_4.x/el/7/x86_64/nodejs-$NODE_VERSION-1nodesource.el7.centos.x86_64.rpm && \
    yum clean all && \
    npm install -g npm@^3.5.3 && \
    npm install -g grunt-cli

EXPOSE 80

COPY root/ /

WORKDIR /code
