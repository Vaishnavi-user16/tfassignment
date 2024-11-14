variable "ec2size" {
  description = "Pls provide the size"
  default = "t2.nano"
}
variable "amiid" {
  description = "pls provide ami value"
  default = "ami-0866a3c8686eaeeba"   
}
variable "env" {
  description = "Supply env requirement"
  default = "default entry"
}
variable "subnet_id" {
   description = "use from network module"
   default = "subnet-015db1381a20bd2f6"
  
}