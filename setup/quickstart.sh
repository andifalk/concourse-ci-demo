#!/bin/bash
sudo /home/afa/scripts/concourse quickstart \
  --basic-auth-username dev \
  --basic-auth-password dev \
  --worker-work-dir /home/afa/concourse/worker \
  --postgres-user concourse \
  --postgres-password concourse \
  --worker-garden-dns-server 1.1.1.1


