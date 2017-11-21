# Raspberry Pi 1 Searx Docker Image With Alpine Linux

[![Build Status](https://travis-ci.org/offtechnologies/docker-arm32v6-searx.svg?branch=master)](travis-ci.org/offtechnologies/docker-arm32v6-searx)
[![This image on DockerHub](https://img.shields.io/docker/pulls/offtechnologies/docker-arm32v6-searx.svg)](https://hub.docker.com/r/offtechnologies/docker-arm32v6-searx/)
[![](https://images.microbadger.com/badges/version/offtechnologies/docker-arm32v6-searx.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-searx "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/offtechnologies/docker-arm32v6-searx.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-searx "Get your own image badge on microbadger.com")


[offtechurl]: https://offtechnologies.gthub.io

[![offtechnologies](https://raw.githubusercontent.com/offtechnologies/offtechnologies.github.io/master/logo.png)][offtechurl]

Raspberry Pi 1 compatible docker image with Alpine Linux and [Searx](https://asciimoo.github.io/searx/) - a free internet metasearch engine which aggregates results from more than 70 search services. Users are neither tracked nor profiled. It is based on the official Searx Docker Image ported to the arm32v6 based Raspbery Pi 1.

## Usage

docker run -d --name searx -p 8888:8888  --dns="8.8.8.8" offtechnologies/docker-arm32v6-searx

## Credits

- [searx](https://asciimoo.github.io/searx/)
- [wonderfall/searx](https://github.com/Wonderfall/dockerfiles/tree/master/searx)

## 1.0.0 - 2017-11-08
* first release
* Custom base image: Alpine Linux arm32v6 ver 3.6 with qemu-arm-static
* Tested on Raspberry Pi 1 Model B Rev 2 with Raspbian 4.9.51-1 and Docker v17.10.0-ce
