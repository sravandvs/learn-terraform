variable "URL" {
  default = "example.com"
}

output "URL"{
  value = var.URL
}

variable "num1" {
  default = 10
}

variable "str1" {
  default = "Hello"
}

variable "str2" {
  default = "World"
}

variable "list1" {
  default = [
  10,
  20,
  "xyz",
  false
  ]
}

variable "map1"{
  default = {
    aws   = {
      trainer = "John"
      duration = 30
    }
    devops = {
      trainer = "Steve"
      duration = 20
    }
  }
}

output "list_1"{
  value = var.list1[1]
}

output "map1_aws_trainer"{
  value = var.map1["aws"]["trainer"]
}
