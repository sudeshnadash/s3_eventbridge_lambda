locals {
  stage       = "dev"
  aws_region  = "eu-west-2"
  aws_profile = "default"
  account_id  = "090350722320"
}

module "base" {
  source = "../base"

  aws_profile = local.aws_profile

  stage      = local.stage
  aws_region = local.aws_region
  
  account_id  = local.account_id

}
