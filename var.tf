variable "ami" {
  default = "ami-07d9b9ddc6cd8dd30"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "aws_cli_3"
}

variable "subnet_id" {
  default = "subnet-03e66aef2d720ff7a"
}


variable "iam_instance_profile" {
  default = "EC2_AWSDEVOPS_SSM"
}