ARG NODE_TAG=15.3.0
FROM node:$NODE_TAG
RUN apt-get update && apt-get install -y \
    graphicsmagick \
    webp \
&& rm -rf /var/lib/apt/lists/*
COPY ./imagick/policy.xml /etc/ImageMagick-6/policy.xml
WORKDIR /code
