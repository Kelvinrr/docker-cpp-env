# docker-cpp-env
A docker image for a simple C++ environment for building and running linux programs


#### Create container as interactive container
``` shell
docker run -it -d -v /path/to/projectfiles:/path/in/container --name cppenv kelvinrr/cpp-env
docker attach cppenv
root@d35c2c52a3a1:/$ which g++
/usr/bin/g++
root@d35c2c52a3a1:/$ ^P^Q
root@d35c2c52a3a1:/$ read escape sequence
```

### To reconnect after docker run
``` shell
docker start cppenv
docekr attach cppenv
root@c23b8b42eac1:/$
```
