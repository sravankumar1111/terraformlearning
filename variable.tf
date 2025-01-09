# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "ap-south-1"
}

# EKS Cluster Name
variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "alvin-eks-cluster"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

# Subnet CIDR Blocks
variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# (Optional) Existing VPC ID
variable "vpc_id" {
  description = "ID of the VPC where subnets will be created"
  type        = string
  default     = ""
}
