#!/bin/sh

./gradlew clean assemble

cp build/libs/* ../deploy-artifact-resource

