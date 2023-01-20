### Developer Role ###
resource "kubernetes_cluster_role_v1" "developer_cluster_role" {
    metadata {
        name = var.dev_cluster_role_name
        labels = {
          role = "developer"
        }
    }
    rule {
        api_groups = [""]
        resources = var.dev_cluster_role_resources
        verbs = var.dev_cluster_role_verbs

    }
}

### GitLab Cluster Role ###

resource "kubernetes_cluster_role_v1" "gitlab_role" {
    metadata {
      name = var.gitlab_cluster_role_name
    }
    rule {
        api_groups = [""]
        resources = ["*"]
        verbs = var.gitlab_cluster_role_verbs
    }
  
}

### Admin Role ####

resource "kubernetes_cluster_role_v1" "admin_role" {
    metadata {
      name = var.admin_cluster_role_name
    }
    rule {
        api_groups = [""]
        resources = ["*"]
        verbs = ["*"]
    }
}