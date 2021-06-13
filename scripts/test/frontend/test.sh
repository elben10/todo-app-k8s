#! /usr/bin/env bash

set -e

kubectl exec -it deploy/frontend -- npm test -- --watchAll=false