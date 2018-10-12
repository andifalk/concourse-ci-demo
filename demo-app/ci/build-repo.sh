#!/bin/sh

cd demo-app

./gradlew clean build upload

cp -R build/repo/* ../../deploy-artifact

