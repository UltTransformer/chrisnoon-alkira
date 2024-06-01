# AWS Cloud Connector

# Demo code
# Normal
# resource "alkira_credential_aws_vpc" "account1" {
#   name           = "customer-aws-1"
#   aws_access_key = "your_aws_acccess_key"
#   aws_secret_key = "your_secret_key"
#   type           = "ACCESS_KEY"
# }

# # Using environment variables
# export AWS_ACCESS_KEY_ID=XXX
# export AWS_SECRET_ACCESS_KEY=XXX

# resource "alkira_credential_aws_vpc" "account1" {
#   name           = "customer-aws-1"
#   type           = "ACCESS_KEY"
# }

resource "alkira_connector_aws_vpc" "chrisnoon-vpc" {
  name     = "chrisnoon-vpc"
  vpc_id   = "vpc-021eec53052212bdc"
  vpc_cidr = ["10.12.0.0/16"]

  aws_account_id = "138319602003"
  aws_region     = "eu-west-2"

  credential_id = "5207685e-cf39-4253-b9b0-84a4b72a046a"
  cxp           = "US-WEST-1"
  group         = "chrisnoon-aws"
  segment_id    = "9397"
  size          = "SMALL"
}