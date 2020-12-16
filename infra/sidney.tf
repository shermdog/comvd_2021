module "sidney_vpc" {
  source = "./modules/vpc"
  region = "sidney"
  providers = {
    aws = aws.sidney
  }
  creator_tags = var.creator_tags
}
