resource "aws_ami_from_instance" "ami" {
  name               = "terraform-ami-lc"
  source_instance_id = "i-090f4a3164847a6e5"
}