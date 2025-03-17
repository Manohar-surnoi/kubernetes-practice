data "aws_ami" "ami_info" {
  most_recent = true
  owners      = ["841162695163"]

  filter {
    name   = "name"
    values = ["Fusion_12-03-2025_Manohar"]
  }

  filter {
    name   = "root-device-type"
    values = ["EBS"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}