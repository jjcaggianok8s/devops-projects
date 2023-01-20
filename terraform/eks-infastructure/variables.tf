### EKS Cluster ###
variable "eks-cluster-name" {
    type = string
}

variable "eks-cluster-tags" {
    type = object({
       TechContact = string
       Application = string
       Component = string
       Environment = string 
    })
}

variable "cluster-version" {
    type = string
}

### Backend ###

variable "iam-data-key" {
    type = string
}

variable "iam-data-bucket" {
    type = string
}

variable "iam-data-region" {
    type = string
}

### Security Group ###

variable "sg_default" {
    type = string
}

variable "sg_second" {
  type = string
}

variable "sg-name" {
    type = string
}

variable "cidr_blocks" {
    type = string
}

variable "cidr_blocks_2" {
    type = string
}

variable "vpc_id" {
    type = string
}
    
variable "eks-sg-tags" {
    type = object({
        TechContact = string
        Application = string
        Component = string
        Environment = string
    })
}


### Node Group One ###

variable "eks-nodegroup-tags" {
    type = object({
        TechContact = string
        Application = string
        Component = string
        Environment = string
    })
}


variable "eks-nodes-min-size" {
    type = string
} 
variable "eks-nodes-max-size" {
    type = string
}
variable "eks-nodes-desired-size" {
    type = string
}
variable "node-group-name" {
    type = string 
}
variable "eks-nodegroup-capacity-type" {
    type = string
}

variable "eks-nodegroup-instance-types" {
    type = list(string)
}
    
variable "eks-nodegroup-labels" {
    type = map(string)
}

variable "eks-nodegroup-disk-size" {
    type = string
}


### Node Group Two

#variable "eks-nodes-min-size" {
#    type = string
#} 
#variable "eks-nodes-max-size" {
#    type = string
#}
#variable "eks-nodes-desired-size" {
#    type = string
#}
#variable "node_second_group_name" {
#    type = string 
#}
#variable "eks-nodegroup-capacity-type" {
#    type = string
#}

#variable "eks-nodegroup-instance-types" {
#    type = list(string)
#}
    
#variable "eks-nodegroup-labels" {
#    type = map(string)
#}

#variable "eks-nodegroup-disk-size" {
#    type = string
#}


### Network ###

variable "eks_cibr_block_sn01" {
    type = string
}
variable "eks_cibr_block_sn02" {
    type = string
}
variable "eks_cibr_block_sn03" {
    type = string
}
variable "eks_cibr_block_sn04" {
    type = string
}
variable "eks_cibr_block_sn05" {
    type = string
}
variable "eks_cibr_block_rt01" {
    type = string
}
variable "eks_cibr_block_rt02" {
    type = string
}
variable "eks_vgw_id" {
    type = string
}

variable "eks_network_tags" {
    type = object({
        TechContact = string
        Application = string
        Component = string
        Environment = string
    })
}


