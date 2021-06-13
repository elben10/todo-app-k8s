#! /usr/bin/env bash

set -e

echo "================Testing API==========================="
bash scripts/test/api/test.sh
echo "================Testing FRONTEND======================"
bash scripts/test/frontend/test.sh