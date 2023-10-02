FROM ubuntu:22.04

RUN apt update -y && apt install -y make g++ cmake build-essential liblua5.2-dev libgmp3-dev libmysqlclient-dev libboost-system-dev libpugixml-dev

WORKDIR /opt/loginserver
COPY ./login-server .

RUN mkdir -p build
RUN cmake -S . -B build && make -C build
RUN mv ./build/tfls .

CMD /opt/loginserver/tfls
