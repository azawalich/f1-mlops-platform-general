# Initial Setup
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# Setup Infrastructure layer
helm install prometheus prometheus-community/kube-prometheus-stack -n f1-platform
helm install prometheus-stack ./prometheus-stack-helm/
helm install minio ./minio-helm/
helm install mlflow ./mlflow-helm/

# Setup Application Layer
helm install dash ./dash-helm/
helm install image-classification-model ./image-classification-model-helm/
helm install recognition-model ./recognition-model-helm/
helm install pygwalker ./pygwalker-helm/
