FROM centos:latest
MAINTAINER Nitesh Kumar <nkumar@1worldsync.com>
RUN mkdir -p /opt/zookeeper/
RUN mkdir -p /opt/zookeeperdata/
RUN mkdir -p /home/nitesh/

RUN cd /home/nitesh/
RUN yum install -y java-1.8.0-openjdk.x86_64
RUN yum install -y vim
RUN curl -O "http://archive.apache.org/dist/zookeeper/zookeeper-3.4.10/zookeeper-3.4.10.tar.gz"

RUN tar -zxvf zookeeper-3.4.10.tar.gz -C /opt/zookeeper/
RUN echo "1" > /opt/zookeeperdata/myid
RUN mv /opt/zookeeper/zookeeper-3.4.10/conf/zoo_sample.cfg /opt/zookeeper/zookeeper-3.4.10/conf/zoo.cfg

EXPOSE 3888 2181 2888 2182 2182
