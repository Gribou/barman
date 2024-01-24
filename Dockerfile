FROM ubuntu:latest

RUN adduser user
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -s /usr/share/zoneinfo/America/New_York /etc/localtime 
RUN apt-get install tzdata -y
RUN apt -y update
RUN apt install -y barman
USER user
WORKDIR /home/user
CMD ["sh", "-c", "tail -f /dev/null"]
