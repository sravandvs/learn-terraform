resource "aws_instance" "instance" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-08ad53375d8c94295"]
  tags = {
    Name = var.component_name
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z09164243MU99FVTOJJQV"
  name    = "${var.component_name}-dev.devopsdvs.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip]
}

variable "component_name" {}