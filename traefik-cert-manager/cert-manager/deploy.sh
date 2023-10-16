kubectl create namespace cert-manager

sleep 2
kubectl get namespaces

sleep 2
kubectl get certificates

sleep 2
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.9.1/cert-manager.crds.yaml

sleep 2
kubectl get certificates

sleep 2
helm install cert-manager jetstack/cert-manager --namespace cert-manager --values=values.yaml --version v1.9.1

sleep 2
kubectl get pods --namespace cert-manager 

cd issuers

sleep 2
kubectl apply -f secret-cf-token.yaml 

sleep 2
kubectl apply -f letsencrypt-staging.yaml

cd -

cd certificates/staging

sleep 2
kubectl apply -f local-example-com.yaml

cd -

sleep 2
kubectl get challenges.acme.cert-manager.io