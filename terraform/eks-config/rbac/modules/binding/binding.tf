### Developer Role binding ###
resource "kubernetes_role_binding_v1" "developer_role_binding01" {
    metadata {
        name = "${var.dev_role_bind_namespace01}-${var.dev_role_bind_name}"
        namespace = var.dev_role_bind_namespace01
    }
    role_ref {
      api_group = "rbac.authorization.k8s.io"
      kind      = "ClusterRole"
      name      = var.dev_cluster_role_name
    }
    subject {
      kind      = "ServiceAccount"
      name      = var.dev_svc_name
      namespace = "default"
    }
}

resource "kubernetes_role_binding_v1" "developer_role_binding02" {
    metadata {
        name = "${var.dev_role_bind_namespace02}-${var.dev_role_bind_name}"
        namespace = var.dev_role_bind_namespace02
    }
    role_ref {
      api_group = "rbac.authorization.k8s.io"
      kind      = "ClusterRole"
      name      = var.dev_cluster_role_name
    }
    subject {
      kind      = "ServiceAccount"
      name      = var.dev_svc_name
      namespace = "default"
    }
}

resource "kubernetes_role_binding_v1" "developer_role_binding03" {
    metadata {
        name = "${var.dev_role_bind_namespace03}-${var.dev_role_bind_name}"
        namespace = var.dev_role_bind_namespace03
    }
    role_ref {
      api_group = "rbac.authorization.k8s.io"
      kind      = "ClusterRole"
      name      = var.dev_cluster_role_name
    }
    subject {
      kind      = "ServiceAccount"
      name      = var.dev_svc_name
      namespace = "default"
    }
}

resource "kubernetes_role_binding_v1" "developer_role_binding04" {
    metadata {
        name = "${var.dev_role_bind_namespace04}-${var.dev_role_bind_name}"
        namespace = var.dev_role_bind_namespace04
    }
    role_ref {
      api_group = "rbac.authorization.k8s.io"
      kind      = "ClusterRole"
      name      = var.dev_cluster_role_name
    }
    subject {
      kind      = "ServiceAccount"
      name      = var.dev_svc_name
      namespace = "default"
    }
}

resource "kubernetes_role_binding_v1" "developer_role_binding05" {
    metadata {
        name = "${var.dev_role_bind_namespace05}-${var.dev_role_bind_name}"
        namespace = var.dev_role_bind_namespace05
    }
    role_ref {
      api_group = "rbac.authorization.k8s.io"
      kind      = "ClusterRole"
      name      = var.dev_cluster_role_name
    }
    subject {
      kind      = "ServiceAccount"
      name      = var.dev_svc_name
      namespace = "default"
    }
}

### GitLab Cluster Role Binding ###
resource "kubernetes_cluster_role_binding_v1" "gitlab_cluster_role_binding" {
  metadata {
    name = var.gitlab_cluster_role_bind_name
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = var.gitlab_role_name
  }
  subject {
    kind  = "ServiceAccount"
    name  = var.gitlab_svc_name
  }  
}

### Admin Cluster Role Binding ###
resource "kubernetes_cluster_role_binding_v1" "admin_cluster_role_binding" {
  metadata {
    name = var.admin_cluster_role_bind_name
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = var.admin_role_name
  }
  subject {
    kind  = "ServiceAccount"
    name  = var.admin_svc_name
  }  
}
