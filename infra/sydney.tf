module "sydney_vpc" {
  source = "./modules/vpc"
  region = "sydney"
  providers = {
    aws = aws.sydney
  }
  creator_tags = var.creator_tags
}
