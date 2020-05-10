FROM alpine:latest

RUN apk add --no-cache unbound
ADD https://www.internic.net/domain/named.root /srv/unbound/root.hints
COPY config/unbound.conf /etc/unbound/unbound.conf

EXPOSE 53
ENTRYPOINT ["/usr/sbin/unbound"]
CMD ["-d"]
