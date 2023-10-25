resource "aws_ecr_repository" "myrepo" {
  name = var.repo_name
}

variable "repo_name" {
  type    = string
  default = "nothing-personal-repo"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.33.0"
    }
  }
  backend "s3" {
    bucket = "pgr301-2021-terraform-state"
    key    = "pame004/test-runner-for-lab.state"
    region = "eu-north-1"
  }
}
