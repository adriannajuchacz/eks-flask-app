variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "eu-central-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "eks-cluster"
}

variable "node_instance_type" {
  description = "EC2 instance type for the EKS nodes"
  type        = string
  default     = "t3.micro"
}

