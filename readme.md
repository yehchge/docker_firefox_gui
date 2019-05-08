[Docker] 圖形界面

Firefox + X11

Dockerfile
```
FROM ubuntu:18.04

RUN apt-get update && apt-get install -y firefox

RUN useradd -ms /bin/bash developer

USER developer
ENV HOME /home/developer

CMD /usr/bin/firefox
```

接著編譯 Docker 映像檔，然後啟動容器，指令如下所示。
```
$ docker build -t firefox .
$ docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix firefox
```

Ref: https://thai-lin.blogspot.com/2018/09/docker.html



