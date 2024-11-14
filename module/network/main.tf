#resource "aws_vpc" "vnet" {
#  cidr_block = var.vpccidrinfo
#  tags = {
#    Nmae = "vpc - ${var.env}"
#  }
# }

resource "aws_subnet" "sn16" {
  cidr_block = var.wbsnet
  vpc_id = "vpc-094579365b61b900d"
  tags = {
    Name = "subneweb1 - ${var.env}"
  }
}

resource "aws_subnet" "sn2" {
  cidr_block = var.dbsubnet
  vpc_id = "vpc-094579365b61b900d"
  tags = {
    Name ="subnetdb - ${var.env}"
  }
  
}
output "vpc_id1" {
  value = aws_subnet.sn16.cidr_block
  
}