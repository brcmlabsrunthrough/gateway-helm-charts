#!/bin/bash
set -xeou pipefail

minikube delete || true
minikube start \
  --kubernetes-version=v1.15.1 \
  --insecure-registry="0.0.0.0/0" --cpus 4 --memory 8192 \
