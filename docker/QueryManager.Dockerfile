FROM ubuntu:22.04

RUN apt update -y && apt install -y g++ make mysql-server libmysqlclient-dev

WORKDIR /opt/querymanager
COPY ./query-manager .

RUN make -C .

CMD /opt/querymanager/querymanager
