helm upgrade --install home gitlab/gitlab-agent \
    --namespace gitlab-agent-home \
    --create-namespace \
    --set image.tag=v16.5.0 \
    --set config.token=token-on-gitlab \
    --set config.kasAddress=wss://kas.gitlab.com