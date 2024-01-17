data "aws_ami" "ubuntu" {
  most_recent = true

  owners      = ["099720109477"] 
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "aws_acm_certificate" "cert" {
  domain   = "*.opstree-war.live"
  statuses = ["ISSUED"]
}

data "aws_route53_zone" "hostedzone" {
  name         = var.hosted_zone
}
