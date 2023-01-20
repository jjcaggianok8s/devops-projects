### Developer Role variables ###

variable "dev_cluster_role_resources" {
    type = list(string)
}

variable "dev_cluster_role_verbs" {
    type = list(string)
}

variable "dev_cluster_role_name" {
    type = string
}

### Gitlab Role variables ###

variable "gitlab_cluster_role_name" {
    type = string
}

variable "gitlab_cluster_role_verbs" {
    type = list(string)
}

### Admin Cluster Role variables ###

variable "admin_cluster_role_name" {
    type = string
}
