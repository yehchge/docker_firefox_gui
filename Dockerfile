FROM ubuntu:18.04

RUN apt-get update && apt-get install -y firefox

RUN useradd -ms /bin/bash developer

USER developer
ENV HOME /home/developer

CMD /usr/bin/firefox

