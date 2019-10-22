FROM ubuntu:bionic

RUN apt update && apt upgrade -yq && \
apt install -y systemd rsync openssh-client nano cron

VOLUME ["/etc/cron.d"]

CMD tail -f /dev/null
