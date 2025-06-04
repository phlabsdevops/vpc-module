variable "vpc-cidr" {
  type=string
  default="10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  type=bool
  default=true
}
variable "project_name" {
  type=string
}
variable "environment" {
  type=string
}
variable "common_tags" {
  type = map
  default = {  #optional
  }
}
variable "vpc_tags" {
  type = map
  default = {  #optional
  }
}   
variable "igw_tags" {
  type = map
  default = {  #optional
  }
}
variable "public_subnet_tags" {
  type = map
  default = {  #optional
  }
}
variable "private_subnet_tags" {
  type = map
  default = {  #optional
  }
}
variable "database_subnet_tags" {
  type = map
  default = {  #optional
  }
}
variable "public_subnets_cidr" {
  type = list
  #default = ["10.0.1.0/24","10.0.2.0/24" ]
  validation {
    condition = length(var.public_subnets_cidr)==2
    error_message = "Please give 2 public valid subnet cidr"
  }
}
variable "private_subnets_cidr" {
  type = list
  #default = ["10.0.11.0/24","10.0.12.0/24" ]
  validation {
    condition = length(var.private_subnets_cidr)==2
    error_message = "Please give 2 private valid subnet cidr"
  }
}
variable "database_subnets_cidr" {
  type = list
  #default = ["10.0.21.0/24","10.0.22.0/24" ]
  validation {
    condition = length(var.database_subnets_cidr)==2
    error_message = "Please give 2 database valid subnet cidr"
  }
}
variable "ngw_tags" {
  type = map
  default = {  #optional
  }
}
variable "public_route_table_tags" {
  type = map
  default = {  #optional
  }
}
variable "private_route_table_tags" {
  type = map
  default = {  #optional
  }
}
variable "database_route_table_tags" {
  type = map
  default = {  #optional
  }
}
variable "is_peering_required" {
  type = bool
  default=false
}
variable "acceptor_vpc_id" {
  type=string
  default = ""
}
variable "vpc_peering_tags" {
  type = map
  default = {  #optional
  }
}