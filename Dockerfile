FROM alpine:latest

RUN apk add --update --no-cache dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
USER nobody
EXPOSE 53000/udp
CMD dnsmasq -d
