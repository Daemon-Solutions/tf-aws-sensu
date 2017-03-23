variable "customer"              {}
variable "envname"               {}
variable "envtype"               {}

variable "key_name"              {}
variable "vpc_id"				         {}
variable "vpc_cidr"              {}
variable "public_subnets"        {
  type = "list"
}
variable "private_subnets"       {
  type = "list"
}
variable "subnets" {
  type = "list"
}
variable "security_groups" {
  type = "list"
  default = []
}

variable "name" {
  default = "sensu-elasticache"
}

variable "cluster_id"{
  default = "sensu-elasticache-cluster"
}

variable "ami_id" {
	default = "ami-787a320b"
}

variable "instance_type" {
  default = "t2.small"
}

variable "elasticache_instance_type" {
	default = "cache.m3.medium"
}

variable "engine" {
  default = "redis"
}

variable "engine_version" {
  default = "3.2.4"
}

variable "parameter_group_name" {
  default = "default.redis3.2"
}
# variable "sensu_instance_profile" {}

# == Variables with default values

variable "aws_region" {
  default = "eu-west-1"
}

variable "azs" {
  description = "A list of Availability zones in the region"
  default     = ["eu-west1a","eu-west-1b","eu-west1c"]
}

variable "infra_access" {
  type = "list"
  default = []
}

variable "snapshot_window" {}
variable "snapshot_retention_limit" {}

variable "sensu_userdata" {}

variable "allowed_remote_cidrs" {
  type = "list"
  default = []
}

variable "min" {  }
variable "max" {  }
