FROM alpine:3.4

RUN apk update

RUN \
	apk add git vim python py-pip; \
	pip install --upgrade pip; \
	pip install awscli

ENTRYPOINT ["/bin/ash"]