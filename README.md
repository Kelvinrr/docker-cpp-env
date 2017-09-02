# cpp-env
A Ubuntu based docker image for a simple C++ environment for building and running Linux C++ programs.

Originally designed for CS students without Linux boxes who need a basic Linux environment for schoolwork. This allows someone to mount their source code from the host machine to a Linux mini VM. So a developer writes code in their favorite editor on the host machine and use a Docker Linux terminal to build and run apps. A lightweight alternative to  a full VM or dual booting.

## Create the interactive container
``` bash
# init docker container
docker run -it -d -v /path/to/host/projectfiles:/path/in/container --name cppenv kelvinrr/cpp-env
# connect to bash shell in container
docker attach cppenv
```

##### Disconecting from the container
Use `^P^Q` to exit without stopping the container, otherwise `^D`

## Reconnect after docker run
``` shell
# start container if stopped
docker start cppenv
docker attach cppenv
root@c23b8b42eac1:/$
```

## Accessing services running inside the container

If you need to run a service (i.e. some kind of server), ports `7000-8000` are
exposed by default. Additional ports can be exposed with the standard [-p flag](https://docs.docker.com/engine/userguide/networking/default_network/binding/).

``` bash
# expose an additional port for PostgreSQL
docker run -it -d -p 5432:5432 kelvinrr/cpp-env`
```
