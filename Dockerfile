FROM ubuntu:latest

RUN adduser user
RUN apt -y update
RUN apt install -y barman
USER user
WORKDIR /home/user
CMD ["sh", "-c", "tail -f /dev/null"]
