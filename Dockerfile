FROM jenkins:latest

MAINTAINER Ivan Turianytsia

USER root
RUN apt-get -qq update \
   && apt-get -qq -y install \
   curl
RUN curl -sSL https://get.docker.com/ | sh
RUN usermod -a -G staff,docker jenkins
RUN wget https://github.com/docker/compose/releases/download/1.12.0/docker-compose-$(uname -s)-$(uname -m) && \
  mv docker-compose-Linux-x86_64 docker-compose && \
  chmod +x docker-compose && \
  mv docker-compose /usr/local/bin && \
  docker-compose --version
USER jenkins
