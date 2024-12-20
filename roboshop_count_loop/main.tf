variable "instances" {
  default = [
    "frontend",
    "cart",
    "catalogue",
    "user",
    "shipping",
    "payment",
    "mysql",
    "mongodb",
    "rabbitmq",
    "redis",
    "dispatch"
  ]
}

resource "aws_instance" "instance" {
  count  = length(var.instances)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-08ad53375d8c94295"]
  tags = {
    Name = var.instances[count.index]
  }
}

resource "aws_route53_record" "record" {
  count = length(var.instances)
  zone_id = "Z09164243MU99FVTOJJQV"
  name    = "${var.instances[count.index]}-dev.devopsdvs.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance[count.index].private_ip]
}