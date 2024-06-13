#!/bin/sh

helm upgrade --install ingress-nginx ingress-nginx --repo https://kubernetes.github.io/ingress-nginx --namespace ingress-nginx --create-namespace > helm_result.txt

NODE_IP=$(kubectl get nodes controlplane -o jsonpath='{.status.addresses[?(@.type=="InternalIP")].address}')
echo $NODE_IP hello.com >> /etc/hosts

echo "Ingress is ready!"
