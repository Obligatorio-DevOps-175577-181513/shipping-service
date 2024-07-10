provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "shipping_service" {
  name                 = "shipping-service"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
    Name = "shipping-service"
  }
  lifecycle {
    ignore_changes = [name]
  }
}