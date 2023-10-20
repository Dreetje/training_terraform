provider "aws" { 
    region = "eu-west-1"
    profile = "dev_engineer"
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "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"
}
