#!/bin/sh

cd demo-app

./gradlew clean assemble

cp build/libs/* ../deploy-artifact

