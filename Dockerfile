FROM alpine:latest
MAINTAINER "Abubakkar Rangara" <aarangara@hotmail.com>

RUN addgroup -S icecast
RUN adduser -S icecast

RUN apk add --update \
	icecast \ 
	mailcap && \
	rm -rf /var/cache/apk/*

#COPY docker-entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh

EXPOSE 8000
VOLUME ["/var/log/icecast"]
#ENTRYPOINT ["/entrypoint.sh"]
#COPY ./icecast.xml /etc/icecast.xml
CMD icecast -c /etc/icecast.xml
