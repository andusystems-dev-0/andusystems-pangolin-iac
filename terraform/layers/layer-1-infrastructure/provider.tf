terraform {
    backend "s3" {
        bucket         = "andusystems-pangolin-tf-state"
        key            = "terraform.tfstate"
        region         = "us-east-1"
        use_lockfile   = true
        encrypt        = true
    }
    
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
