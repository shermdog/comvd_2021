variable "creator_tags" {
  type        = map(string)
  default = {
    Creator = "rick.sherman",
    "terraform.managed" = "True"
  }
}
