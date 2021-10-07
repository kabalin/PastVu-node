NODE_TAG=16.10.0
build:
	docker build \
	-t pastvu/node:$(NODE_TAG) \
	-t pastvu/node:latest \
	--build-arg NODE_TAG=$(NODE_TAG) .
push:
	docker push \
	pastvu/node:$(NODE_TAG)
	docker push \
	pastvu/node:latest
