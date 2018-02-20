FROM outrigger/servicebase

LABEL maintainer="Phase2 <outrigger@phase2technology.com>" \
  # Replacement for the old MAINTAINER directive has fragmented.
  # "vendor" prevents CentOS from leaking through, the other is for tools integrations.
  vendor="Phase2 <outrigger@phase2technology.com>" \
  name="Node v4" \
  deprecated="2017-09-30"

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
