# Helm

variable "helm_create_namespace" {
  type        = bool
  default     = true
  description = "Create the namespace if it does not yet exist"
}

variable "helm_chart_name" {
  type        = string
  default     = "kube-state-metrics"
  description = "Helm chart name to be installed"
}

variable "helm_chart_version" {
  type        = string
  default     = "3.0.2"
  description = "Version of the Helm chart"
}

variable "helm_release_name" {
  type        = string
  default     = "kube-state-metrics"
  description = "Helm release name"
}

variable "helm_repo_url" {
  type        = string
  default     = "https://charts.bitnami.com/bitnami"
  description = "Helm repository"
}

# K8s

variable "k8s_namespace" {
  type        = string
  default     = "kube-system"
  description = "The K8s namespace in which the kube-state-metrics service account has been created"
}

variable "kubestatereplicas" {
  type        = string
  default     = "3"
  description = "number of replicas to provision"
}