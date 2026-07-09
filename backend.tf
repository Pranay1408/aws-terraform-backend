terraform {
  backend "s3" {
    bucket         = "pranay-terraform-state-2026"
    key            = "backend-project/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}
