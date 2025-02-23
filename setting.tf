provider "aws" {
  profile = "Terraform-user"
  region  = "us-east-1"
}
provider "aws" {
  alias   = "non-default"
  profile = "Terraform-user2"
  region  = "us-west-1"
}