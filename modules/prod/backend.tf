terraform {
  backend "s3" {
    bucket         = "eks-application-state-bucket-prod"
    key            = "eks/cluster-001/terraform.tfstate"
    region         = "us-east-1"
  }
}
