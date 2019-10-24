FROM nvidia/cuda:8.0-devel-ubuntu16.04

RUN apt-get update

WORKDIR /home/$USER_NAME

COPY ./install_dep.sh /tmp/install_dep.sh
RUN yes "Y" | /tmp/install_dep.sh
