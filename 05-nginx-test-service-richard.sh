
kubectl create deployment nginx --image=nginx

kubectl expose deployment nginx --port=80

kubectl apply -f files/ingress-for-nginx-richard.yaml
