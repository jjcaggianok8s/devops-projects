module "eks_nsp" {
    source          = "./modules/namespaces"
    for_each        = toset(var.eks_namespaces)
    eks_namespace   = each.value
}

module "eks_roles" {
    source                    = "./modules/roles"
    dev_cluster_role_name             = var.dev_cluster_role_name
    dev_cluster_role_verbs            = var.dev_cluster_role_verbs
    dev_cluster_role_resources        = var.dev_cluster_role_resources
    gitlab_cluster_role_name  = var.gitlab_cluster_role_name
    gitlab_cluster_role_verbs = var.gitlab_cluster_role_verbs
    admin_cluster_role_name   = var.admin_cluster_role_name


    depends_on = [
      module.eks_nsp
    ]
}

module "eks_svc" {
    source                      = "./modules/svc"
    dev_sa                      = var.dev_sa
    dev_role_arn                = var.dev_role_arn
    gitlab_sa                   = var.gitlab_sa
    git_role_arn                = var.git_role_arn
    admin_sa                    = var.admin_sa
    admin_role_arn              = var.admin_role_arn

    depends_on = [
      module.eks_nsp,
      module.eks_roles
    ]
}

module "eks_role_binding" {
  source                        = "./modules/binding"
  dev_role_bind_name            = var.dev_role_bind_name
  dev_cluster_role_name         = var.dev_cluster_role_name
  dev_svc_name                  = var.dev_sa
  dev_role_bind_namespace01     = var.dev_role_bind_namespace[0]
  dev_role_bind_namespace02     = var.dev_role_bind_namespace[1]
  dev_role_bind_namespace03     = var.dev_role_bind_namespace[2]
  dev_role_bind_namespace04     = var.dev_role_bind_namespace[3]
  dev_role_bind_namespace05     = var.dev_role_bind_namespace[4]
  gitlab_cluster_role_bind_name = var.gitlab_cluster_role_bind_name
  gitlab_role_name              = var.gitlab_cluster_role_name
  gitlab_svc_name               = var.gitlab_sa
  admin_cluster_role_bind_name  = var.admin_cluster_role_bind_name
  admin_role_name               = var.admin_cluster_role_name
  admin_svc_name                = var.admin_sa


  depends_on = [
    module.eks_nsp,
    module.eks_roles,
    module.eks_svc
  ]  
}