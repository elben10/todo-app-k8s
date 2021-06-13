#! /usr/bin/env bash

set -e

kubectl exec -it deploy/api -- black --check src tests
kubectl exec -it deploy/api -- pytest