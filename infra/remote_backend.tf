terraform {
  backend "s3" {
    bucket         = "create-k8s-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "create-k8s-state-locks"
    encrypt        = true
    profile        = "default"
  }
}
