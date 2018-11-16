# Concourse CI Demo
Quick start for getting Concourse CI up and running.

## Introduction to Concourse CI

You can find the introductory slides here:

* [Presentation slides (html5)](https://andifalk.github.io/concourse-ci-demo/presentation/index.html)
* [Presentation slides (pdf)](https://github.com/andifalk/concourse-ci-demo/raw/gh-pages/Concourse%20CI.pdf)

## Prerequisites for the demos

* Linux Operating System (Demos are created/validated on Linux only)
* Docker and Docker-Compose [Install](https://docs.docker.com/compose/)
* PCFDev [Download](https://network.pivotal.io/products/pcfdev#/releases/88478)
* Fly CLI [Download](https://concourse-ci.org/download.html)

## Startup required services

Before starting with the demos please make sure you have set up your environemnt as described in
_setup_ sub folder.

## Demo Labs

This repository contains several demos.

1. In _hello-world_ sub folder you find simple demos for
    * executing a task
    * setting up a simple pipeline with manual trigger
    * setting up an automatically triggered pipeline

2. In _demo-app_ you find a pipeline to
    * build and test a spring boot application
    * deploy the build artifact on a local CloudFoundry instance    