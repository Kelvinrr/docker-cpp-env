# docker-cpp-env
A docker image for a simple C++ environment for building and running linux programs.

Originally designed for CS students without Linux boxes who need a basic Linux environment for schoolwork. This allows someone to mount their source code from the host machine to a Linux mini VM. So a developer writes code in their favorite editor on the host machine and use a Docker Linux terminal to build and run apps. A lightweight alternative to  a full VM or dual booting.

## Create the interactive container
``` shell
# init docker container
docker run -it -d -v /path/to/host/projectfiles:/path/in/container --name cppenv kelvinrr/cpp-env
# connect to bash shell in container
docker attach cppenv
root@d35c2c52a3a1:/$ which g++
/usr/bin/g++
root@d35c2c52a3a1:/$ ^P^Q # exit shell
root@d35c2c52a3a1:/$ read escape sequence
```

## Reconnect after docker run
``` shell
# start container if stopped
docker start cppenv
docker attach cppenv
root@c23b8b42eac1:/$
```
