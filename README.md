# Concourse CI Demos
Live coding demos for Concourse CI

## Requirements

* PostgreSQL database [Installation](https://www.postgresql.org/download/)
* Concourse CI [Download](https://concourse-ci.org/download.html)
* Fly CLI [Download](https://concourse-ci.org/download.html)

## Setup

### Linux

```
sudo /home/afa/scripts/concourse quickstart \
  --basic-auth-username myuser \
  --basic-auth-password mypass \
  --worker-work-dir ~/concourse/worker \
  --postgres-user myuser \
  --postgres-password mypass \
  --worker-garden-additional-dns-server 8.8.8.8
```

### Windows

```
TODO
```


### Mac-OS

```
TODO
```

## Access Concourse CI Web Console

Direct your web browser to [localhost:8080](http://localhost:8080).

The login credentials are the ones you have specified in arguments _--basic-auth-username_ and _--basic-auth-password_ when starting concourse.

## Access Concourse CI with Fly CLI

To access Concourse CI using the fly command line tool you first have to
login to Concourse CI with following command:

```
fly login -t local -c http://localhost:8080 -u myuser -p mypass
```

To verify if Concourse CI is running as expected the following command can be used to execute a *Hello World* example:

```
fly login -t local -c http://localhost:8080 -u myuser -p mypass
```
