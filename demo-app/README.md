# Concourse CI Demo Pipeline
This contains the demo pipeline for Concourse CI

## Requirements

* Java 8 SDK
* Java IDE

## Demo spring boot application

The demo application is just a simple spring boot application providing a REST API
with one GET and one POST request. The application is secured and can be accessed via basic auth or form based authentication using the credentials user/secret.

```
$ http localhost:9090 --auth user:secret

HTTP/1.1 200 OK
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Content-Length: 25
Content-Type: application/json;charset=UTF-8
Expires: 0
Pragma: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
X-XSS-Protection: 1 ; mode=block

{
    "message": "Hello World"
}
```

```
$ http post localhost:9090 message=world --auth user:secret

HTTP/1.1 201 Created
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Content-Length: 11
Content-Type: application/json;charset=UTF-8
Expires: 0
Pragma: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: DENY
X-XSS-Protection: 1 ; mode=block

Hello world
```

## Concourse Pipelines

The pipelines are created in 3 steps:

1. Basic pipeline just for getting source from git repository and compiling the app and running tests
2. Extend basic pipeline to deploy the created jar file to CloudFoundry (local PCFDev instance)
3. Extend second pipeline with an additional step to upload created binary artifacts into artifactory repository first and then deploy the jar from there to CloudFoundry (PCFDev)

### Basic pipeline

![Image of basic pipeline](https://github.com/andifalk/concourse-ci-demo/raw/master/images/demo_build_pipeline.png)

### Build/Deploy pipeline

![Image of build/deploy pipeline](https://github.com/andifalk/concourse-ci-demo/raw/master/images/demo_build_deploy_pipeline.png)

### Build/Repo/Deploy pipeline

![Image of build/repo/deploy pipeline](https://github.com/andifalk/concourse-ci-demo/raw/master/images/demo_build_repo_deploy.png)