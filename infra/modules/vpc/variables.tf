variable "creator_tags" {
  type        = map(string)
}

variable "region_cidr"{
  type = map

  default = {
    "paris" = "10.10.10.0/24"
    "sidney" = "10.20.20.0/24"
  }
}

variable "region" {
  type        = string
  description = "AWS region"
}
