NODE_TAG=15
build:
	docker build -t pastvu/node:$(NODE_TAG) \
	--build-arg NODE_TAG=$(NODE_TAG) .
push:
	docker push pastvu/node:$(NODE_TAG)
