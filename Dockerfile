ARG DOCKER_VERSION=latest
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=latest

RUN apk update \
      && apk add --no-cache py-pip

RUN pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"
