terraform {
  backend "s3" {
    bucket         = "first-k8s-in-vm-terraform-state-bucket"
    key            = "path/to/your/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-locks"
  }
}
