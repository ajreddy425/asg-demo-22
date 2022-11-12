resource "aws_ami_from_instance" "ami" {
  name               = "terraform-ami-lc"
  source_instance_id = "i-00f98c576f41bac4b"
}