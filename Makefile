BUILD_DATE = $(shell date +'%Y-%m-%dT%H:%M:%SZ+09')

all: build

build:
	docker build --no-cache=true --build-arg BUILD_DATE=$(BUILD_DATE) -t nueks/nettools:latest .

push:
	docker push nueks/nettools:latest

.PHONY: all build push
