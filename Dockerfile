FROM ubuntu

MAINTAINER Kelvin Rodriguez <kr788@nau.edu>

# install basic build tools
RUN apt-get update
RUN apt-get install -y libx11-dev
RUN apt-get install -y gfortran
RUN apt-get install -y xorg openbox
RUN apt-get install -y libboost-dev
RUN apt-get install -y rsync
RUN apt-get install -y cmake
RUN apt-get install -y make
RUN apt-get install -y g++
RUN apt-get install -y gcc
RUN apt-get install -y git

# Editors
RUN apt-get install -y vim
RUN apt-get install -y emacs

# for docs
RUN apt-get update && apt-get install -y firefox

# expose a range of ports
EXPOSE 7000-8000

ENTRYPOINT /bin/bash
