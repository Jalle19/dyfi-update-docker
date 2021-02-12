FROM debian:10

ENV USER=changeme
ENV PASS=changeme
ENV HOSTS=changeme

WORKDIR /dyfi

RUN apt-get update && \
    apt-get -y install wget perl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cd /tmp && \
    wget https://www.dy.fi/files/dyfi-update-pl-1.2.0.tar.gz && \
    tar -xvf dyfi-update-pl-1.2.0.tar.gz && \
    cp dyfi-update-pl-1.2.0/dyfi-update.pl /dyfi/dyfi-update.pl && \
    rm -rf /tmp/dyfi-update-pl-1.2.0

CMD ./dyfi-update.pl -u $USER -p $PASS -i /tmp/dyfi-update.pid -l - -d $HOSTS
