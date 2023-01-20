variable "region" {
  type = string
  default = "us-east-1"
}

variable "user_arn" {
  type = string
}

variable "key_spec" {
  type = string
  default = "SYMMETRIC_DEFAULT"
}

variable "enabled" {
  default = true
}

variable "rotation_enabled" {
  default = true
}


variable "kms_alias" {
   type = string
   default = "eks_kms_key"
}


variable "tags" {
   type = object({
       TechContact = string 
       Application = string
       Component = string
       Environment = string
   })
}
