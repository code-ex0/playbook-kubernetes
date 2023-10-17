helm upgrade --install gitlab gitlab/gitlab \
  --timeout 600s \
  --set global.hosts.domain=toto.com \
  --set global.hosts.externalIP=192.168.1.200 \
  --set certmanager-issuer.email=exemple@gmail.com \
  --set postgresql.image.tag=13.6.0
  --set global.edition=ce