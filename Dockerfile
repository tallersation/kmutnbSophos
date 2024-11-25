FROM ubuntu:24.04

RUN apt update && apt upgrade -y

RUN apt install curl wget net-tools vim -y

COPY ./caa_x64.tar.gz /

RUN tar -xzvf /caa_x64.tar.gz -p -C $HOME

RUN mv ~/bin/caa /usr/local/bin

CMD ["/usr/local/bin/caa"]