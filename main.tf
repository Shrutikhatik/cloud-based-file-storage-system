terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "file_storage" {
  bucket = "cloud-file-storage-shruti-2026"

  tags = {
    Name        = "Cloud File Storage"
    Project     = "Cloud-Based File Storage System"
    Environment = "Project"
  }
}