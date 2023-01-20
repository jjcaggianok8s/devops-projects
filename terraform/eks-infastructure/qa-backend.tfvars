region = "us-east-1"
bucket         = "terraform-state-qa"
key            = "qa/infra/eks-cluster.tfstate"
dynamodb_table = "terraform-state-qa-locks"
encrypt        = true