variable "environment" {
  type = string
}

variable "location" {
  type    = string
  default = "norwayeast"
}

variable "backend_resource_group_name" {
  type = string
}

variable "backend_storage_account_name" {
  type = string
}