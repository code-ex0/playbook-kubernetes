helm repo add gitlab https://charts.gitlab.io

helm install --namespace default gitlab-runner -f values.yaml gitlab/gitlab-runner




