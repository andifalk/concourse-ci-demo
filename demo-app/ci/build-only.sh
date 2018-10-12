#!/bin/sh

cd demo-app

./gradlew clean build

cp build/libs/demo-app-1.0.0-SNAPSHOT.jar ../../deploy-artifact

