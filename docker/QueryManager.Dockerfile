FROM ubuntu:22.04

RUN apt update -y && apt install -y make libmysqlclient-dev  mysql-server

WORKDIR /opt/querymanager
COPY ./query-manager .

RUN make -C .

CMD /opt/querymanager/querymanager
