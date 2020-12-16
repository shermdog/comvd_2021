module "paris_vpc" {
  source = "./modules/vpc"
  region = "paris"
  providers = {
    aws = aws.paris
  }
  creator_tags = var.creator_tags
}
