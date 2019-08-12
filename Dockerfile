FROM ubuntu:18.04

RUN apt-get -qq update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y install mosquitto apache2-utils && \
	rm -rf /var/lib/apt/lists/*

VOLUME /certs

COPY mosquitto.conf /etc/mosquitto/conf.d/mosquitto.conf
COPY docker-entrypoint.sh /usr/local/bin

CMD [ "docker-entrypoint.sh" ]

