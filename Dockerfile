FROM ubuntu:latest

RUN adduser user
RUN apt-get -y update && DEBIAN_FRONTEND="noninteractive" TZ="America/New_York" apt-get install -y tzdata
RUN apt -y update
RUN apt install -y barman
USER user
WORKDIR /home/user
CMD ["sh", "-c", "tail -f /dev/null"]
