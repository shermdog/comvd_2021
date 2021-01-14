variable "creator_tags" {
  type        = map(string)
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "subnet" {
  type        = string
  description = "Subnet ID"
}

variable "security_groups" {
  type        = list(string)
  description = "List of security group IDs"
  default     = []
}

variable "bastion_key" {
  type        = string
  description = "SSH Key Pair for Bastion"
}
