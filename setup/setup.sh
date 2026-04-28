#!/bin/bash

# https://github.com/kubernetes-sigs/agent-sandbox/releases
export VERSION="v0.4.2"
kubectl apply -f "https://github.com/kubernetes-sigs/agent-sandbox/releases/download/${VERSION}/manifest.yaml"
kubectl apply -f "https://github.com/kubernetes-sigs/agent-sandbox/releases/download/${VERSION}/extensions.yaml"

kubectl apply -f sandbox-router/sandbox_router.yaml -n agent-sandbox-system
