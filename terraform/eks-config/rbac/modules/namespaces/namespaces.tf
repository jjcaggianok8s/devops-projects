resource "kubernetes_namespace_v1" "eks_nsp" {
    metadata {
        labels = {
            name = var.eks_namespace
        }
    name = var.eks_namespace
    }
}