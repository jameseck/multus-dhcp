FROM alpine:3.17
RUN apk add --update \
	curl \
  && curl -SLO https://github.com/containernetworking/plugins/releases/download/v1.2.0/cni-plugins-linux-amd64-v1.2.0.tgz \
  && tar xvfpz cni-plugins-linux-amd64-v1.2.0.tgz

ENTRYPOINT ["./dhcp", "daemon", "-hostprefix", "/host"]
