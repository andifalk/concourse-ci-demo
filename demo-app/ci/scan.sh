#!/bin/sh

zap-cli start --start-options '-config api.disablekey=true'
zap-cli status -t 60
#zap-cli context import demoapp.context
zap-cli open-url "http://concourse-demo.local.pcfdev.io/"
#zap-cli spider --context-name DevTest --user-name SomeUser "http://concourse-demo.local.pcfdev.io/"
#zap-cli active-scan --recursive -c DevTest -u SomeUser "http://concourse-demo.local.pcfdev.io/"
zap-cli spider "http://concourse-demo.local.pcfdev.io/"
zap-cli active-scan --recursive --scanners all "http://concourse-demo.local.pcfdev.io/"
ip=$(zap-cli alerts --alert-level Low)
zap-cli shutdown
exit $ip