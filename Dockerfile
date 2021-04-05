FROM python:3.9-alpine3.12

ARG BUILD_DATE
LABEL maintainer="madgray@gmail.com"
LABEL org.label-schema.build-date=$BUILD_DATE

RUN apk add --no-cache --update \
	coreutils \
	busybox-extras \
	bash \
	net-tools \
	curl \
	drill \
	iperf3 \
	iproute2 \
	iptables \
	iputils \
	socat \
	tcpdump

