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

variable "bastion_user" {
  type        = string
  description = "User to connect through Bastion"
  default     = "ec2-user"
}

variable "bastion_ip" {
  type        = string
  description = "IP of bastion host"
}

variable "provisioning_key" {
  type        = string
  description = "Location of bastion_key on provisioner"
}

variable "moar_keys" {
  type        = list
  description = "Additonal SSH Authorized keys"
}

variable "dd_api_key" {
  type        = string
  description = "Datadog API Key"
}
