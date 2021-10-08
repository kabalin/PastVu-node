[![Docker Image CI](https://github.com/PastVu/node/actions/workflows/docker-image.yml/badge.svg)](https://github.com/PastVu/node/actions/workflows/docker-image.yml)

# pastvu/node

Node.js Docker image with customisations.

## Publishing new image version

It might be a good idea to check Node.js [release notes](https://github.com/nodejs/node/blob/master/CHANGELOG.md) and see if any changes may affect PastVu app (eg. breaking changes).

1. Bump version (in Dockerfile and Makefile)
2. Run `make build`
3. Amend PastVu app [docker-compose.yml](https://github.com/PastVu/pastvu/blob/master/docker-compose.yml) locally to use the new version,
   reinstall the app, make sure it runs and works as expected.
4. Push version bump commit.
5. Create a tag matching upstream Node.js version.
6. Watch Github Action building image and pushing to [Dockerhub](https://hub.docker.com/r/pastvu/node), validate that new image was published.
7. Create node version bump PR for [https://github.com/PastVu/pastvu](https://github.com/PastVu/pastvu).
