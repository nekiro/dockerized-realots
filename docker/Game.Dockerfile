FROM ubuntu:22.04

RUN apt update -y

COPY ./dennis-libraries/ /lib/
RUN chmod 777 -R /lib

WORKDIR /opt/game

COPY ./tibia-game.tarball/ .
RUN cp .tibia ~
RUN rm -f /opt/game/save/game.pid

COPY /game /bin
RUN chmod 777 /bin/game

CMD /bin/game
