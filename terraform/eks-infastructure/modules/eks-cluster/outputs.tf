output "eks-cluster-id" {
   description = "EKS Cluster ID"
   value = aws_eks_cluster.eks_cluster.id
}

output "eks-cluster-arn" {
    description = "EKS Cluster ARN"
    value = aws_eks_cluster.eks_cluster.arn
}

output "eks-cluster-name" {
    description = "EKS Cluster Name"
    value = aws_eks_cluster.eks_cluster.name
}

