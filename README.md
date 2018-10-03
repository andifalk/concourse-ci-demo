# Concourse CI Demo
Presentation and live coding demos for Concourse CI

[Presentation (HTML5)](https://andifalk.github.io/concourse-ci-demo/presentation)

## Requirements

* Concourse CI [Download](https://concourse-ci.org/download.html)
* Fly CLI [Download](https://concourse-ci.org/download.html)
* PostgreSQL database (if quickstart is used) [Installation](https://www.postgresql.org/download/)

## Setup

#### Docker Compose

```
wget https://concourse-ci.org/docker-compose.yml
docker-compose up
```
#### Quickstart

```
sudo concourse quickstart \
  --basic-auth-username dev \
  --basic-auth-password dev \
  --worker-work-dir ~/concourse/worker \
  --postgres-user concourse \
  --postgres-password concourse \
  --worker-garden-additional-dns-server 1.1.1.1
```

## Access Concourse CI Web Console

Direct your web browser to [127.0.0.1:8080](http://127.0.0.1:8080).

The login credentials are the ones you have specified in arguments _--basic-auth-username_ and _--basic-auth-password_ when starting concourse or _test/test_ when using docker-compose setup.

## Access Concourse CI with Fly CLI

To access Concourse CI using the fly command line tool you first have to
login to Concourse CI with following command:

```
fly login -t local -c http://127.0.0.1:8080 -u test -p test
```

To verify if Concourse CI is running as expected the following command can be used to execute a *Hello World* example:

```
fly execute -t local -c hello-world/task-hello.yml
```
