#!/bin/sh

cd demo-app

./gradlew clean assemble

cp build/libs/demo-app-0.0.1-SNAPSHOT.jar ../../deploy-artifact

