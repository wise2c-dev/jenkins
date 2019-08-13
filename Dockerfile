FROM jenkins/jenkins:centos
RUN yum makecache && \
    yum update && \
    yum install wget && \
    wget -O docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-19.03.1.tgz && \
    gunzip -c docker.tgz | tar xvf - && \
    mv docker/docker /usr/bin/docker && \
    chmod +x /usr/bin/docker && \
    rm -rf ./docker ./docker.tgz && \
    yum install make && \
    yum clean all
