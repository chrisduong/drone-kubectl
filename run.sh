#!/bin/sh

if [ -z ${KUBECTL_API_SERVER+x} ]; then
  echo "Undefined \"KUBECTL_API_SERVER\" env" && exit 1
fi

if [ -z ${KUBECTL_NAMESPACE+x} ]; then
  echo "Undefined \"KUBECTL_NAMESPACE\" env" && exit 1
fi

if [ -z ${KUBECTL_RESOURCE_FILE+x} ]; then
  echo "Undefined \"KUBECTL_RESOURCE_FILE\" env" && exit 1
fi

if [ -z ${KUBECTL_TOKEN+x} ]; then
  echo "Undefined \"KUBECTL_TOKEN\" env" && exit 1
fi

# https://kubernetes.io/docs/reference/kubectl/kubectl/
kubectl  --insecure-skip-tls-verify \
  --server=$KUBECTL_API_SERVER \
  --token=$KUBECTL_TOKEN \
  --namespace=$KUBECTL_NAMESPACE \
  apply --filename=$KUBECTL_RESOURCE_FILE