doctl k8s cluster kubeconfig save k8s-f1-platform
kubectl proxy
kubectl port-forward -n kubernetes-dashboard deploy/kubernetes-dashboard-web 8443:8443
kubectl apply -f echo_ingress.yaml
kubectl describe certificate echo-tls
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission