# Concourse CI Demo
Presentation and live coding demos for Concourse CI

[Presentation (HTML5)](https://andifalk.github.io/concourse-ci-demo/presentation)

## Requirements

* Docker and Docker-Compose (for docker-compose quickstart)
* Kubernetes Cluster Minikube (for kubernetes quickstart)
* Helm (for kubernetes quickstart)
* Fly CLI [Download](https://concourse-ci.org/download.html)

## Setup

### Docker

```
wget https://concourse-ci.org/docker-compose.yml
docker-compose up
```
#### Kubernetes / Helm

Install concourse into kubernetes cluster:
```
helm install stable/concourse
```

To enable access to concourse outside of kubernetes cluster
execute following commands in same shell:
```
export POD_NAME=$(kubectl get pods --namespace default -l "app=alternating-angelfish-web" -o jsonpath="{.items[0].metadata.name}")
echo "Visit http://127.0.0.1:8080 to use Concourse"
kubectl port-forward --namespace default $POD_NAME 8080:8080
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
