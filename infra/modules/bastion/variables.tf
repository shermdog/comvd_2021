variable "creator_tags" {
  type        = map(string)
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "bastion_subnet" {
  type        = string
  description = "Subnet ID for bastion"
}

variable "bastion_key" {
  type        = string
  description = "SSH Key Pair for Bastion"
}

variable "mgmt_ip" {
  type        = string
  description = "Source IP for SSH Access"
}

variable "bastion_security_groups" {
  type        = list(string)
  description = "List of security group IDs for bastion host"
  default     = []
}
