region         = "us-east-1"
bucket         = "company1-terraform-state-dev"
key            = "dev/infra/eks-cluster-kms.tfstate"
dynamodb_table = "company1-terraform-state-dev-locks"
encrypt        = true