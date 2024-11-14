variable "vpc_id" {
  description = "Supply VPC cidr block"
  default = "10.16.0.0/16"
}

variable "wsnet" {
  description = "supply web subnet cidr"
  default = "10.16.1.0/24"
}

variable "dbsubnet" {
  description = "supply db subnet cidr"
  default = "10.16.2.0/24"
  
}
variable "env" {
  description = "Supply env requirement"
  default = "default entry"
}
  