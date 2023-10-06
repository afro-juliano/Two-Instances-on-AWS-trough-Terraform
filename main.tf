provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias = "west"
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "terraform-essentials-us-east-1"
    key = "terraform-test.tfstate"
    region = "us-east-1"
  }
}