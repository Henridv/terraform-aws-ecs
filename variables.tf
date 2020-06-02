variable "create_cluster" {
  description = "Controls if ECS cluster should be created"
  type        = bool
  default     = true
}

variable "cluster_arn" {
  type    = string
  default = null
}

variable "name" {
  description = "Prefix for the resource names"
}

variable "container_name" {
  type = string
}

variable "task_definition" {
  type = string
}

variable "target_group" {
  type = string
}

variable "port" {
  type    = number
  default = 80
}

variable "tags" {
  description = "A map of tags to add to ECS Cluster"
  type        = map(string)
  default     = {}
}
