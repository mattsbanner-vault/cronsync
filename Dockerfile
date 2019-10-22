FROM ubuntu:bionic

RUN apt update && apt upgrade -yq && \
apt install -y rsync openssh-client cron

VOLUME ["/etc/cron.d"]

CMD tail -f /dev/null
