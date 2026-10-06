variable "environment" {
  type = string
}

variable "location" {
  type    = string
  default = "norwayeast"
}

variable "subnets" {
  type = map(string)

  default = {
    frontend = "10.0.1.0/24"
    backend  = "10.0.2.0/24"
    data     = "10.0.3.0/24"
  }
}