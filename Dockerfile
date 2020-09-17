FROM node
RUN apt-get update && apt-get -y install graphicsmagick webp
COPY ./imagick/policy.xml /etc/ImageMagick-6/policy.xml
