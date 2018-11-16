# Concourse CI Hello World

This lab starts with a simple _hello world_ style task and pipeline.

## Prerequisites

- Concourse CI has to be setup correctly

## Hello World Task

To quickly get a first impression on how to execute a task on Concourse CI please

```
fly login -t local -c http://127.0.0.1:8080 -u test -p test
fly execute -t local -c ./task-hello.yml
```

## Hello World Pipeline

To quickly get a first impression on how to setup a first pipeline on Concourse CI please

```
fly login -t local -c http://127.0.0.1:8080 -u test -p test
fly set-pipeline -t local -p hello-world -c ./pipeline-hello.yml
```

Initially all pipelines are created in paused state. To unpause the pipeline just use this command:

```
fly unpause-pipeline -t local -p hello-world
```

After unpausing the pipeline you can trigger the new pipeline by its contained job:

```
fly trigger-job -t local -j hello-world/hello-world-job
```

or you may trigger the job by clicking on the big __'+'__ on the UI by browsing to http://127.0.0.1:8080/teams/main/pipelines/hello-world  
(you may first have to log in using credentials test/test).

![Image of start pipeline](https://github.com/andifalk/concourse-ci-demo/raw/master/hello-world/images/start_pipeline.png)

## Hello World Triggered Pipeline

To quickly get an impression on how to setup an automatically triggered pipeline on Concourse CI please

```
fly login -t local -c http://127.0.0.1:8080 -u test -p test
fly set-pipeline -t local -p hello-world-trigger -c ./pipeline-hello-trigger.yml
```

Initially all pipelines are created in paused state. To unpause the pipeline just use this command:

```
fly unpause-pipeline -t local -p hello-world-trigger
```

After unpausing the pipeline its job should directly be automatically triggered.

## Useful commands ##

1. You can always look at all pipelines for the _main_ team here:  

    http://127.0.0.1:8080/teams/main/pipelines

2. To list all builds:

    ```
    fly -t local builds
    ```


3. To see the outputs of a build job:  

    ```
    fly -t local watch -j hello-world-trigger/hello-world-job
    ```

