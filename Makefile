IMAGENAME=guidelacour/whatweb
VERSION=$(shell date "+%Y%m%d")

build:
	@echo Building whatweb $(VERSION) image...
	docker build --tag $(IMAGENAME):$(VERSION) .
	docker tag $(IMAGENAME):$(VERSION) $(IMAGENAME):latest

test:
	docker run --rm $(IMAGENAME):$(VERSION) | grep "web scanner version"

push:
	docker push $(IMAGENAME):$(VERSION)
	docker push $(IMAGENAME):latest
clean:
	rm --recursive --force WhatWeb
