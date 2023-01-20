data "terraform_remote_state" "eks-iam" {
    backend = "s3"
    config = {
        bucket = var.iam-data-bucket
        key = var.iam-data-key
        region = var.iam-data-region
    }
}
resource "null_resource" "updateKubeconfig" {
  provisioner "local-exec" {
    command = <<EOT
      aws eks --region ${var.iam-data-region} update-kubeconfig --name ${var.cluster_name} && echo "updated..."
    EOT
  }
}

resource "time_sleep" "waitForKubeconfig" {
  depends_on 			= [null_resource.updateKubeconfig]
  create_duration		= "60s"
}

resource "kubernetes_config_map" "eks-auth-config" {
    metadata {
        name = "eks-auth-config"
        namespace = "kube-system"
    }
    data = {
        mapRoles = <<YAML
    - rolearn: "${data.terraform_remote_state.eks-iam.outputs.iam-eks-nodes-role-arn}"
      username: system:node:{{EC2PrivateDNSName}}
      groups: 
        - system:bootstrappers
        - system:nodes
    YAML
      }

      lifecycle {
        ignore_changes = all
    }
}
