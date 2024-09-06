
curl -L -o vcluster "https://github.com/loft-sh/vcluster/releases/download/v0.20.0/vcluster-linux-amd64" \
  && sudo install -c -m 0755 vcluster /usr/local/bin \
  && rm -f vcluster
