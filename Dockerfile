FROM continuumio/miniconda3
MAINTAINER Nikita Kazeev kazeevn@yandex-team.ru

RUN apt-get update
RUN apt-get install -y pkg-config libfreetype6-dev

COPY environment.yml /tmp/environment.yml
RUN conda env create -f /tmp/environment.yml
COPY install_RISE.sh /tmp/install_RISE.sh
RUN /tmp/install_RISE.sh

COPY start.sh /root/start.sh
EXPOSE 8888
CMD /root/start.sh
