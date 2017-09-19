FROM centos:latest

WORKDIR /opt/aeron
ADD . /opt/aeron

RUN yum install -y java-1.8.0-openjdk nc net-tools traceroute

ENV JAVA_HOME /etc/alternatives/jre