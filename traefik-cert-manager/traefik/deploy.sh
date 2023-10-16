kubectl create namespace traefik 

kubectl get namespaces

helm install --namespace=traefik traefik traefik/traefik --values=values.yaml

kubectl get svc --all-namespaces -o wide

kubectl get pods --namespace traefik

kubectl apply -f default-headers.yaml

kubectl get middleware

cd dashboard

kubectl apply -f secret-dashboard.yaml

kubectl get secrets --namespace traefik

kubectl apply -f middleware.yaml

kubectl apply -f ingress.yaml

cd -
