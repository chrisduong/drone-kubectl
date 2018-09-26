#!/bin/sh

if [ -z ${PLUGIN_API_SERVER+x} ]; then
  echo "Undefined \"PLUGIN_API_SERVER\" env" && exit 1
fi

if [ -z ${PLUGIN_NAMESPACE+x} ]; then
  echo "Undefined \"PLUGIN_NAMESPACE\" env" && exit 1
fi

if [ -z ${PLUGIN_RESOURCE_FILE+x} ]; then
  echo "Undefined \"PLUGIN_RESOURCE_FILE\" env" && exit 1
fi

if [ -z ${KUBECTL_TOKEN+x} ]; then
  echo "Undefined \"KUBECTL_TOKEN\" env" && exit 1
fi

# https://kubernetes.io/docs/reference/kubectl/kubectl/
kubectl  --insecure-skip-tls-verify \
  --server=$PLUGIN_API_SERVER \
  --token=$KUBECTL_TOKEN \
  --namespace=$PLUGIN_NAMESPACE \
  apply --filename=$PLUGIN_RESOURCE_FILE