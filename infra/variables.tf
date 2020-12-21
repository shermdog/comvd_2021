variable "creator" {
  type        = string
  description = "Creator of resources per Datadog policy"
}

variable "mgmt_ip" {
  type        = string
  description = "Source IP for SSH Access"
}

variable "bastion_key" {
  type        = string
  description = "SSH Key Pair for Bastion"
}
