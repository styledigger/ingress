#!/bin/sh

export NAMESPACE=shared-ingress

#kubectl delete namespace $NAMESPACE --ignore-not-found=true --now=true

# wait to delete resources
#sleep 60

kubectl create namespace $NAMESPACE

#wait to avoid issues with uncreated namespace
 sleep 10

$kubectl create sa oraclebmc-provisioner -n=$NAMESPACE

# kubectl apply -f rbac.yaml -n=$NAMESPACE
# kubectl apply -f nginx-default-backend-deployment.yaml -n=$NAMESPACE
# kubectl apply -f nginx-default-backend-service.yaml -n=$NAMESPACE
# kubectl apply -f nginx-config.yaml -n=$NAMESPACE
# kubectl apply -f nginx-ingress-controller-deployment.yaml -n=$NAMESPACE
# kubectl apply -f nginx-ingress-controller-service.yaml -n=$NAMESPACE
kubectl apply -f https://raw.githubusercontent.com/styledigger/ingress/master/rbac.yaml -n=$NAMESPACE
kubectl apply -f https://raw.githubusercontent.com/styledigger/ingress/master/nginx-default-backend-deployment.yaml -n=$NAMESPACE
kubectl apply -f https://raw.githubusercontent.com/styledigger/ingress/master/nginx-default-backend-service.yaml -n=$NAMESPACE
kubectl apply -f https://raw.githubusercontent.com/styledigger/ingress/master/nginx-config.yaml -n=$NAMESPACE
kubectl apply -f https://raw.githubusercontent.com/styledigger/ingress/master/nginx-ingress-controller-deployment.yaml -n=$NAMESPACE
kubectl apply -f https://raw.githubusercontent.com/styledigger/ingress/master/nginx-ingress-controller-service.yaml -n=$NAMESPACE