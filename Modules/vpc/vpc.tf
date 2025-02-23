resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}
output "vpcid" {
  value = aws_vpc.vpc.id
}