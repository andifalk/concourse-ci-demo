# Hello World Demo
Concourse CI pipeline printing out the familiar _Hello World_.

## Execute pipeline using Fly CLI

To access Concourse CI using the fly command line tool you first have to
login to Concourse CI with following command:

```
fly login -t local -c http://localhost:8080 -u myuser -p mypass
```

To execute the hello world demonstration just type in the following command:
```
fly execute -t local -c ./hello.yml
```
