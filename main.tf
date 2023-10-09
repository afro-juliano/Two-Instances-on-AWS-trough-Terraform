# This is the provider for the first EC2 instance
provider "aws" {
  region = "us-east-1"
}

# This is the provider number two for the second instance, and this is necessary to declare
# an alias
provider "aws" {
  alias = "west"
  region = "us-west-2"
}

# This is the backend for my application and it will be stored on my bucket s3.
terraform {
  backend "s3" {
    bucket = "terraform-essentials-us-east-1"
    key = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
