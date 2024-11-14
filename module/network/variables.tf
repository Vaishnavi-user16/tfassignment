variable "vpccidrinfo" {
  description = "Supply VPC cidr block"
  default = "10.16.16.0/16"
}

variable "wbsnet" {
  description = "supply web subnet cidr"
  default = "10.222.61.1/24"
}

variable "dbsubnet" {
  description = "supply db subnet cidr"
  default = "10.222.53.0/24"
  
}
variable "env" {
  description = "Supply env requirement"
  default = "default entry"
}
  