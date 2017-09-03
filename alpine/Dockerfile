FROM alpine

MAINTAINER Kelvin Rodriguez <kr788@nau.edu>

# install basic build tools
RUN apk update
RUN apk add rsync
RUN apk add cmake
RUN apk add make
RUN apk add g++
RUN apk add gcc
RUN apk add git

# Editors
RUN apk add vim
RUN apk add emacs

# optional third party libs
RUN apk add boost-dev
RUN apk add gfortran
RUN apk add xorg-server
RUN apk add openbox

# expose a range of ports
EXPOSE 7000-8000

ENTRYPOINT /bin/bash
