### Developer Role binding Variables ###
variable "dev_role_bind_name" {
    type = string
}

variable "dev_cluster_role_name" {
    type = string
}

variable "dev_svc_name" {
    type = string 
}

variable "dev_role_bind_namespace01" {
    type = string
}
variable "dev_role_bind_namespace02" {
    type = string
}
variable "dev_role_bind_namespace03" {
    type = string
}
variable "dev_role_bind_namespace04" {
    type = string
}
variable "dev_role_bind_namespace05" {
    type = string
}
### GitLab Cluster Role Binding Variables ###

variable "gitlab_cluster_role_bind_name" {
  type = string
}

variable "gitlab_role_name" {
    type = string
}

variable "gitlab_svc_name" {
    type = string
}

### Admin Cluster Role Binding Variables ###

variable "admin_cluster_role_bind_name" {
  type = string
}

variable "admin_role_name" {
    type = string
}

variable "admin_svc_name" {
    type = string
}