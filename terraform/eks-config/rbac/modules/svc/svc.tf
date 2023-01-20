### Developer Service Account ###
resource "kubernetes_service_account_v1" "eks_developer_sa" {
    metadata {
        name = var.dev_sa
        annotations = {
            "eks.amazonaws.com/role-arn" = var.dev_role_arn
        }
    }
    automount_service_account_token = true
}

### GitLab Service Account ###

resource "kubernetes_service_account_v1" "eks_gitlab_developer_sa" {
    metadata {
        name = var.gitlab_sa
        annotations = {
            "eks.amazonaws.com/role-arn" = var.git_role_arn
        }
    }
    automount_service_account_token = true
}

### Admin Service Account ###
resource "kubernetes_service_account_v1" "eks_admin_sa" {
    metadata {
        name = var.admin_sa
        annotations = {
            "eks.amazonaws.com/role-arn" = var.admin_role_arn
        }
    }
    automount_service_account_token = true
}
