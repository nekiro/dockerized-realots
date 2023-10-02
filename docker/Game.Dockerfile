FROM ubuntu:22.04

RUN apt update -y
RUN apt update -y && apt install -y make g++ libmysqlclient-dev cmake build-essential liblua5.2-dev libgmp3-dev libboost-system-dev libpugixml-dev lib32z1

# copy start script
COPY ./docker/game.sh /opt/exec/

# login server
WORKDIR /opt/loginserver
COPY ./login-server .

RUN mkdir -p build
RUN cmake -S . -B build && make -C build
RUN mv ./build/tfls .

# query manager
WORKDIR /opt/querymanager
COPY ./query-manager .

RUN make -C .

# game
COPY ./dennis-libraries/ /lib/
RUN chmod 777 -R /lib

WORKDIR /opt/game

COPY ./tibia-game.tarball/ .
RUN chmod 777 ./bin/game
RUN cp .tibia ~
RUN rm -f /opt/game/save/game.pid

CMD /opt/exec/game.sh
