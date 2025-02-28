# module "github-repo" {
#   source = "github.com/enggalal/dolfined_repo.git"
# }
resource "aws_s3_bucket" "s3_backend" {
  bucket = "hossambucket1234132"
  tags = {
    Name="s3_backend"
  }
 
}
resource "aws_iam_user" "lb" {
  name  = "dev_user${count.index}"
  count = 3
  path  = "/system/"
}