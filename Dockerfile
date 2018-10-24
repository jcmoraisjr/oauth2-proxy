FROM alpine:3.8
ARG URL=https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz
RUN apk add --no-cache ca-certificates \
 && wget -O- $URL | tar xzf - --strip-components=1\
 && chown root.root /oauth2_proxy\
 && addgroup -g 1001 oauth2proxy\
 && adduser -u 1001 -G oauth2proxy -D -s /bin/false oauth2proxy
USER oauth2proxy
