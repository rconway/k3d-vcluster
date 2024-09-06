
export PATH="$PWD/bin:$PATH"

kubectl create namespace cluster-richard

vcluster create richard --namespace cluster-richard -f files/vcluster-richard.yaml #--connect=false

# Need to wait a bit for this...
# kubectl get secret vc-richard -n cluster-richard --template={{.data.config}} | base64 -d > kubeconfig-richard.yaml
