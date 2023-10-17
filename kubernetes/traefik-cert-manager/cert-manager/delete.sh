cd certificates/staging

kubectl delete -f local-example-com.yaml

cd -

cd issuers

kubectl delete -f letsencrypt-staging.yaml

kubectl delete -f secret-cf-token.yaml

cd -

helm uninstall cert-manager --namespace cert-manager

kubectl delete -f https://github.com/cert-manager/cert-manager/releases/download/v1.9.1/cert-manager.crds.yaml

kubectl delete namespace cert-manager

