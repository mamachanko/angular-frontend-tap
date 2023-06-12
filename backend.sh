#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

kubectl run sample-backend --image nginx:latest -n workloads
kubectl expose pod sample-backend --port 80 -n workloads
