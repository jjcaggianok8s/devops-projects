#### Name Space Module Variables ####

variable "eks_namespaces" {
    type = list(string)
}




########## Cluster Roles & Roles ##########

### Developer Cluster Role Variables ###

variable "dev_cluster_role_resources" {
    type = list(string)
}

variable "dev_cluster_role_verbs" {
    type = list(string)
}

variable "dev_cluster_role_name" {
    type = string
}

### GitLab Cluster Role Variables ###

variable "gitlab_cluster_role_name" {
    type = string
}

variable "gitlab_cluster_role_verbs" {
    type = list(string)
}

### Admin Cluster Role Variables ###

variable "admin_cluster_role_name" {
    type = string
}

######### Service Account Variables #########

### Developer Service Account Variables ###

variable "dev_sa" {
    type = string
}

variable "dev_role_arn" {
    type = string
}

### Gitlab Service Account Variables ###

variable "gitlab_sa" {
    type = string
}

variable "git_role_arn" {
    type = string
}

### Admin Service Account Variables ###

variable "admin_sa" {
    type = string
}

variable "admin_role_arn" {
    type = string
}




### Cluster Role & Role Binding Variables ### 

### Developer SVC Role binding ###

variable "dev_role_bind_name" {
    type = string
}

variable "dev_role_bind_namespace" {
    type = list(string)
}

### GitLab SVC Cluster Role Binding ###

variable "gitlab_cluster_role_bind_name" {
  type = string
}

### Admin SVC Cluster Role Binding ###

variable "admin_cluster_role_bind_name" {
  type = string
}