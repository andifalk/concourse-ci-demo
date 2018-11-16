# Concourse CI Quickstart
Quick start for getting Concourse CI up and running.

## Prerequisites

* Linux Operating System (currently demo setup is only written and validated for Linux)
* Docker and Docker-Compose [Install](https://docs.docker.com/compose/)
* PCFDev [Download](https://network.pivotal.io/products/pcfdev#/releases/88478)
* Fly CLI [Download](https://concourse-ci.org/download.html)

## Startup required services using docker-compose

The following shell script starts up Concourse CI (with required PostgreSQL database):

```
./start_concourse.sh
```

The following shell script starts up PCF Dev (local CloudFoundry instance):

```
./start_pcfdev.sh
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

To verify that PCF Dev is up and running please login to PCF Dev and check that no apps are running:

```
cf login -a https://api.local.pcfdev.io -u admin -p admin -o pcfdev-org -s pcfdev-space --skip-ssl-validation
cf apps
```

If the demo app is already running then just delete it:

```
cf delete -f -r concourse-demo
```
