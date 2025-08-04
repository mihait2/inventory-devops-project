# Inventory DevOps Project

This project demonstrates how to deploy a containerized Python app to AKS using:

- Terraform for provisioning AKS on Azure
- GitHub Actions for CI/CD
- Docker for containerization
- ArgoCD for GitOps continuous delivery

## Folder Structure

- `app/` – Python Flask app
- `terraform/` – Infrastructure code
- `manifests/` – Kubernetes manifests
- `.github/workflows/` – CI/CD pipeline
- `helm/` – Helm chart

## Monitoring

Install Prometheus & Grafana via Helm:

```bash
kubectl create namespace monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install kube-monitoring prometheus-community/kube-prometheus-stack --namespace monitoring
```