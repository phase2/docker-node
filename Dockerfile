FROM phase2/servicebase:latest

ENV NODE_VERSION=6.9.4
ENV NPM_VERSION=3.10.9

RUN curl https://dl.yarnpkg.com/rpm/yarn.repo > /etc/yum.repos.d/yarn.repo

RUN yum -y update && \
    yum -y install gcc-c++ git \
        https://rpm.nodesource.com/pub_6.x/el/7/x86_64/nodejs-$NODE_VERSION-1nodesource.el7.centos.x86_64.rpm \
        yarn && \
    yum clean all && \
    npm install -g npm@^$NPM_VERSION && \
    npm install -g grunt-cli

EXPOSE 80

COPY root/ /

WORKDIR /code
