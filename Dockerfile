FROM ubuntu:bionic
LABEL maintainer = "Matt Banner <matt@banner.wtf>"
ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get install -y \
    systemd rsync openssh-client cron && \
    mkdir /resource && \
    rm -rf /var/lib/apt/lists/*

ADD run.sh /root/run.sh

RUN chmod 755 /root/run.sh

VOLUME ["/resource"]

CMD ["/root/run.sh"]