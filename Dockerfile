FROM node:15
RUN apt-get update && apt-get -y install graphicsmagick webp
COPY ./imagick/policy.xml /etc/ImageMagick-6/policy.xml
WORKDIR /code
