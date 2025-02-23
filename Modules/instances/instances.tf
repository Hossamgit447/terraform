resource "aws_instance" "web" {
  instance_type = "t2.micro"
  ami="ami-05b10e08d247fb927"
}
output "ec2" {
value=aws_instance.web.ami
}