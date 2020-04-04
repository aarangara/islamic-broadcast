FROM alpine:latest
MAINTAINER "Abubakkar Rangara" <aarangara@hotmail.com>

RUN addgroup -S icecast
RUN adduser -S icecast

RUN apk add --update \
	icecast \ 
	mailcap && \
	rm -rf /var/cache/apk/*

EXPOSE 80
VOLUME ["/var/log/icecast"]
CMD icecast -c /etc/icecast.xml
