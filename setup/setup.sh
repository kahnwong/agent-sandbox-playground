#!/bin/bash

# https://github.com/kubernetes-sigs/agent-sandbox/releases
export VERSION="v0.4.2"
kubectl apply -f "https://github.com/kubernetes-sigs/agent-sandbox/releases/download/${VERSION}/manifest.yaml"
kubectl apply -f "https://github.com/kubernetes-sigs/agent-sandbox/releases/download/${VERSION}/extensions.yaml"

# `sandbox-router` have to be in the same space as `sandbox-template`
kubectl apply -f sandbox-router/sandbox_router.yaml -n default
kubectl apply -f python-sandbox-template.yaml -n default
kubectl apply -f sandbox-template.yaml -n default  # added by me
