FROM centos:7.6.1810
MAINTAINER ksravikumar2005@gmail.com

RUN yum -y update && yum -y install openssl libssl-dev && yum clean all

ADD ./schema/mongomysqlmap.drdl /etc/mongodb-bi-connector/schema/mongomysqlmap.drdl

ADD bin /usr/local/bin
RUN chmod -R 755 /usr/local/bin

EXPOSE 3307
