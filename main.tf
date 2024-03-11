# Versions 
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Authentication to AWS from Terraform code
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "terraformectwo"
    key    = "projects_statefile/terraform.state"
    region = "us-east-1"
  }
}

# Continuous Integration - Jenkins
resource "aws_instance" "suresh_jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_n ame               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = ["sg-02ffff8f734a1c201"]
  iam_instance_profile   = var.iam_instance_profile
  user_data              = file("jenkins.sh")
  tags = {
    Name      = "cloudbinary_Jenkins"
    CreatedBy = "Terraform"
  }
}
