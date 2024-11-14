<<<<<<< HEAD
module "modulecomputedemo" {
  source = "./module/compute"
  env = "dev-001"
  ec2size = "t2.micro"
  #subnet_id = module.modulenetdemo.subnetiddata
}

module "modulenetworkdemo" {
  source = "./module/network"
  env = "dev-001" 
  vpccidrinfo = "10.222.0.0/16"
  wbsnet = "10.222.61.0/24"
}

module "modulesecuritygroupdemo" {
  source = "./module/securitygroup"
#   env="dev-001"
  }
output "instance_id" {
 value = module.modulecomputedemo.instance_id
=======
resource "aws_vpc" "vpc1" {
    cidr_block = "10.100.0.0/16"
    tags = {
      Name = "VPC from tf to hcpcloud changed"
    }
  
>>>>>>> 304e405286e229802129402e95a93529fbb34b82
}