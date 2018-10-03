# Concourse CI Quickstart
Quick start for getting Concourse CI up and running.

## Prerequisites

The PostgreSQL database requires the following before starting Concourse CI:

1. User role named _concourse_ with password _concourse_
2. A database named _atc_ with user _concourse_ as database owner

## Startup Concourse CI

```
./quickstart.sh
```

To verify that Concourse CI is up and running please check with following commands:
```
fly login -t local -c http://127.0.0.1:8080 -u dev -p dev
fly workers -t local
```

This should return something similar as

```
name           containers  platform  tags  team  state    version
my-concourse   0           linux     none  none  running  2.1    
```

If no worker appears or it appears as _stalled_ then something has gone wrong!