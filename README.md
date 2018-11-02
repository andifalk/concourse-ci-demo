# Concourse CI Demo
Quick start for getting Concourse CI up and running.

* [Presentation slides (html5)](https://andifalk.github.io/concourse-ci-demo/presentation/index.html)
* [Presentation slides (pdf)](https://github.com/andifalk/concourse-ci-demo/raw/gh-pages/Concourse%20CI.pdf)

## Prerequisites

* Docker and Docker-Compose [Install](https://docs.docker.com/compose/)
* PCFDev [Download](https://network.pivotal.io/products/pcfdev#/releases/88478)
* Credhub CLI [Install](https://github.com/cloudfoundry-incubator/credhub-cli)
* Fly CLI [Download](https://concourse-ci.org/download.html)

## Startup required services using docker-compose

The following shell scripts starts up the following required services:

- UAA and CredHub by CloudFoundry
- JFrog Artifactory OSS
- Concourse CI

```
./setup.sh
```

## Verify correct setup

To verify that Concourse CI is up and running please check with following commands:
```
fly login -t local -c http://127.0.0.1:8080 -u test -p test
fly workers -t local
```

This should return something similar as

```
name           containers  platform  tags  team  state    version
my-concourse   0           linux     none  none  running  2.1    
```

If no worker appears or it appears as _stalled_ then something has gone wrong!