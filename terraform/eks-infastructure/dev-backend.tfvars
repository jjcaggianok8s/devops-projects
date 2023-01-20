region = "us-east-1"
bucket         = "terraform-state-dev"
key            = "dev/infra/eks-cluster.tfstate"
dynamodb_table = "terraform-state-dev-locks"
encrypt        = true