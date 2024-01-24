FROM ubuntu:latest

RUN adduser user
RUN apt -yupdate
RUN apt install -y barman
USER user
WORKDIR /home/user
CMD ["sh", "-c", "tail -f /dev/null"]
