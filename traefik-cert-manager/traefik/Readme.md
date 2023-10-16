# install traefik on kubernetes cluster

first create namespace 

```
kubectl create namespace traefik 
```

# download traefik helm chart

```
helm add repo traefik https://helm.traefik.io/traefik
```

or you can just update helm repo

```
helm repo update
```


# then install traefik with helm

```
helm install traefik traefik/traefik -n traefik -f values.yaml
```