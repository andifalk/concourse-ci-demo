# Concourse CI Quickstart
Quick start for getting Concourse CI up and running.

## Prerequisites

* Docker and Docker-Compose (for docker-compose quickstart)
* Kubernetes Cluster Minikube (for kubernetes quickstart)
* Helm (for kubernetes quickstart)
* Fly CLI [Download](https://concourse-ci.org/download.html)

## Startup Concourse CI using docker-compose

```
./quickstart-docker.sh
```

## Startup Concourse CI using kubernetes / helm

```
./kubernetes-install.sh
./quickstart-kubernetes.sh
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