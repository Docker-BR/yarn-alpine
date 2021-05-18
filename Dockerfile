FROM alpine:latest

MAINTAINER Enieber Cunha<eniebercunha@gmail.com>

RUN apk update

RUN apk add --no-cache yarn

COPY entrypoint.sh /

ENTRYPOINT ["/sbin/tini", "--", "/entrypoint.sh"]
CMD ["yarn"]
