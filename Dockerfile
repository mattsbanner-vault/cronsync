FROM ubuntu:bionic

RUN apt update && apt upgrade -yq && \
apt install -y rsync openssh-client nano

CMD tail -f /dev/null