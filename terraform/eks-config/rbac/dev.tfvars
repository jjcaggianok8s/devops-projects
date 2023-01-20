### NameSpace Values

eks_namespaces = ["claims","underwriting","backoffice","aspera","policy"]

######### Service Account Values #########

#### Developer Service Account ####

dev_sa          = "developer"
dev_role_arn    = "arn:/AWS_Dev"

#### GitLab Service Account ####

gitlab_sa       = "gitlab"
git_role_arn    = "arn/CICD-Generic"

#### Admin Service Account ####

admin_sa        = "adminsvc"
admin_role_arn  = "arn/AWS_InfraOps"


########## Roles & Cluster Roles ##########

### Developer Role Values###
dev_cluster_role_name           = "developer"
# dev_cluster_role_resources      = ["pod","service","deployment","replicasets","ingress", "namespaces"]
dev_cluster_role_resources = ["pods","services","deployments","replicasets","namespaces"]
dev_cluster_role_verbs          = ["get","list","watch"]

### Gitlab Cluster Role Values ###

gitlab_cluster_role_name = "gitlab"
gitlab_cluster_role_verbs = ["get", "list", "watch", "create", "update", "patch"]

### Admin Cluster Role Values ###

admin_cluster_role_name = "adminsvc"


########## Role & Cluster Role Bindings ##########

### Developer Role Binding Values ###

dev_role_bind_name      = "developer"
dev_role_bind_namespace = ["claims","underwriting","backoffice","aspera","policy"]

### GitLab Cluster Role Binding Values ###

gitlab_cluster_role_bind_name    = "gitlab"


### Admin Cluster Role Binding Values ###

admin_cluster_role_bind_name    = "adminbinding"