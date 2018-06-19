#!/bin/bash
sudo /home/afa/scripts/concourse quickstart \
  --basic-auth-username myuser \
  --basic-auth-password mypass \
  --worker-work-dir /home/afa/concourse/worker \
  --postgres-user myuser \
  --postgres-password mypass \
  --worker-garden-dns-server 8.8.8.8


