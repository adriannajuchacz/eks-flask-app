# eks-flask-app

This repository contains a sample project for deploying a simple Flask web application on Amazon EKS using Terraform and Kubernetes. The purpose of this project is to practice and gain hands-on experience with EKS, Terraform, and Kubernetes.

## Prerequisites

- An AWS account
- AWS CLI configured
- Terraform installed
- kubectl installed
- Docker installed

## Provisioning the Infrastructure
1. Navigate to the Terraform directory:
   ```bash
   cd terraform
   ```
2. Initialize Terraform:
    ```bash
    terraform init
    ```
3. Apply Terraform configuration:
    ```bash
    terraform apply
    ```
Confirm the changes by typing yes.

## Deploying the Flask App
1. Navigate to the k8s directory:

```bash
cd ../k8s
```
2. Apply the Kubernetes configuration files:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
3. Verify the deployment:

```bash
kubectl get deployments
```
4. Verify the service:

```bash
kubectl get services
```
## Interacting with the EKS Cluster
1. List all pods:

```bash
kubectl get pods
```
2. Describe a specific deployment:

```bash
kubectl describe deployment flask-app
```
3. View logs of a specific pod:

```bash
kubectl logs <pod-name>
```
Replace <pod-name> with the name of the pod you want to view logs for.

4. Scale the deployment:

```bash
kubectl scale deployment flask-app --replicas=3
```
5. Port forward to access the Flask app locally:

```bash
kubectl port-forward deployment/flask-app 8080:8080
```
Access the Flask app at http://localhost:8080.

## Cleanup
To avoid incurring charges, you can delete the AWS resources created by Terraform.

1. Navigate to the Terraform directory:

```bash
cd ../terraform
```
2. Destroy the infrastructure:

```bash
terraform destroy
```
Confirm the destruction by typing yes.