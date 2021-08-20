FROM ubuntu:20.04 as base
RUN export DEBIAN_FRONTEND=noninteractive; \
    export DEBCONF_NONINTERACTIVE_SEEN=true;\
    apt-get update -qqy && apt-get install -qqy --option Dpkg::Options::="--force-confnew" --no-install-recommends \
    tzdata libmicrohttpd12 ca-certificates imagemagick curl wget ffmpeg x264  motion && \
    apt-get --quiet autoremove --yes && \
    apt-get --quiet --yes clean && \
    rm -rf /var/lib/apt/lists/*
VOLUME /etc/motion
COPY ./motion.conf /etc/motion/motion.conf
VOLUME /var/lib/motion
CMD [ "motion", "-n" ]