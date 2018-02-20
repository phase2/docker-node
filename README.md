# Outrigger Node

> Node image for a JavaScript server side platform.

[![GitHub tag](https://img.shields.io/github/tag/phase2/docker-node.svg)](https://github.com/phase2/docker-node)
[![Docker Stars](https://img.shields.io/docker/stars/outrigger/node.svg)](https://hub.docker.com/r/outrigger/node)
[![Docker Pulls](https://img.shields.io/docker/pulls/outrigger/node.svg)](https://hub.docker.com/r/outrigger/node)
[![](https://images.microbadger.com/badges/image/outrigger/node.svg)](https://microbadger.com/images/outrigger/node "Get your own image badge on microbadger.com")

For more documentation on how Outrigger images are constructed and how to work
with them, please [see the documentation](http://docs.outrigger.sh/).

## Usage Example

```
docker run -v ~/Project/node-app:/code outrigger/node
```

## Environment Variables

Outrigger images use Environment Variables and [confd](https://github.com/kelseyhightower/confd)
to "templatize" a number of Docker environment configurations. These templates are
processed on startup with environment variables passed in via the docker run
command-line or via your docker-compose manifest file. Here are the "tunable"
configurations offered by this image.

* `SKIP_NPM_INSTALL`: If this is set (to anything) it will not run `npm install` when the container boots.


## Security Reports

Please email outrigger@phase2technology.com with security concerns.

## Maintainers

[![Phase2 Logo](https://s3.amazonaws.com/phase2.public/logos/phase2-logo.png)](https://www.phase2technology.com)
