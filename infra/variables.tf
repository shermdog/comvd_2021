variable "creator" {
  type        = string
  description = "Creator of resources per Datadog policy"
}

variable "mgmt_ip" {
  type        = list
  description = "Source IP for SSH Access"
}

variable "bastion_key" {
  type        = string
  description = "SSH Key Pair for Bastion"
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
