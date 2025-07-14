APP_NAME=hello-world
VERSION=$(shell cat VERSION)
BUILD_DIR=build

all: build

build:
	go build -o $(BUILD_DIR)/$(APP_NAME) ./cmd

deb:
	fpm -s dir -t deb -n $(APP_NAME) -v $(VERSION) $(BUILD_DIR)/$(APP_NAME)=/usr/local/bin/$(APP_NAME)

docker:
	docker build -t ghcr.io/martinmohan/$(APP_NAME):$(VERSION) .

release: all deb docker
