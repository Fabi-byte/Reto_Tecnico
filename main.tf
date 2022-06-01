
terraform {
  backend "remote" {
    organization = "fabi-byte"
    name = "Prueba_Tecnica"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}


provider "aws" {
  profile = "default"
  region  = "us-west-2"
  access_key = "AKIAR5YNTKTOIPSR5E6H"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_s3_bucket" "my-s3-private-bucket" {
  bucket_prefix = var.bucket_priv_prefix
  acl = "private"
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}

resource "aws_s3_bucket" "my-s3-public-bucket" {
  bucket_prefix = var.bucket_pub_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}

resource "aws_s3_bucket_object" "cat1" {
  bucket = "acg-testlab-public-20220531041204156600000001"
  key    = "cat1.jpg"
  source = "Files/cat2.jpg"
  acl = "public-read"
  
}


resource "aws_s3_bucket_object" "priv_cat1" {
  bucket = "acg-testlab-private-20220531041204156600000002"
  key    = "cat1.jpg"
  source = "Files/cat1.jpg"
  
}





resource "github_repository" "Prueba_tecnica" {
  name        = "Prueba_Tecnica"
  description = "Repositorio para prueba tecnica de terraform"
}
