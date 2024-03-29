FROM ubuntu:latest
RUN apt -y update
RUN adduser user
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -s /usr/share/zoneinfo/America/New_York /etc/localtime 
RUN apt-get install tzdata -y
RUN apt install -y barman
RUN apt install -y sudo
RUN apt install -y vi
USER user
WORKDIR /home/user
CMD ["sh", "-c", "tail -f /dev/null"]
