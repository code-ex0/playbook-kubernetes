cd dashboard

kubectl delete -f ingress.yaml

kubectl delete -f middleware.yaml

kubectl delete -f secret-dashboard.yaml

cd -

kubectl delete -f default-headers.yaml

helm uninstall traefik --namespace traefik

kubectl delete namespace traefik 