provider "aws" {
  profile = "Terraform-user"
  region = "us-east-1"
}
provider "aws" {
  alias = "non-default"
  profile = "Terraform-user2"
  region = "us-west-1"
}
terraform {
  backend "s3" {
    bucket="hossambucket1234132"
    key = "network/backend"
    region = "us-east-1"
    profile = "Terraform-user" 
    dynamodb_table = "state_lock_table"
  }
}