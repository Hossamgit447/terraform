resource "aws_instance" "ec2" {
  instance_type = lookup(var.type,terraform.workspace)
  ami = "ami-05b10e08d247fb927"
  
}
variable "type" {
  type = map(any)
  default = {
    prod="t2.large"
    default="t2.micro"
    dev="t3.meduim"
  }

}