#!/bin/bash

# AFTER ISTIO IS INSTALLED AND NAMESPACE LABELED

kubectl create secret generic opa-policy --from-file=allow-policy.rego
kubectl apply -f ../opa.yaml
kubectl apply -f bookinfo.yaml
kubectl apply -f etcd.yaml
kubectl apply -f opaAuthz.yaml
kubectl apply -f envFilter.yaml
