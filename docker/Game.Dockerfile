FROM ubuntu:22.04

RUN apt update -y && apt install -y lib32z1

COPY ./dennis-libraries/ /lib/
RUN chmod 777 -R /lib

WORKDIR /opt/game

COPY ./tibia-game.tarball/ .
RUN chmod 777 ./bin/game
RUN cp .tibia ~
RUN rm -f /opt/game/save/game.pid
COPY ./game /bin

CMD /bin/game
