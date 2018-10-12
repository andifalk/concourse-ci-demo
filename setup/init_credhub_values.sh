#!/bin/bash

credhub login -s https://localhost:9000 -u credhub -p password --skip-tls-validation

credhub set --name=/concourse/cf-user --value=admin --type=value
credhub set --name=/concourse/cf-password --value=admin --type=value
credhub find /concourse
