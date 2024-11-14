# Generate Private Key
#resource "tls_private_key" "dbkey" {
#  algorithm = "RSA"
#  rsa_bits  = 2048
#}

# Create AWS Key Pair
# resource "aws_key_pair" "ec2_key" {
#  key_name   = "keypairuser16"
#  public_key = tls_private_key.dbkey.public_key_openssh
#
#
#  tags = {
#    Name = "keypairuser16"
#  }
#}

# Save the Private Key to a .pem File
#resource "local_file" "dbkey_pem" {
#  filename        = "keypairuser16.pem"
#  content         = tls_private_key.dbkey.public_key_pem
#  file_permission = "700" # Ensure the file is only readable by the owner
#}

#Create Internet Gateway
# resource "aws_internet_gateway" "dev-igway" {
#   vpc_id = "vpc-094579365b61b900d"
#   tags = {
#     "Name" = "dev-2501-igateway"
#   }
# }

#Create Security Group in the VPC with port 80, 22 as inbound open
resource "aws_security_group" "db-sg" {
  name        = "db-web-ssh-sg16"
  vpc_id      = "vpc-094579365b61b900d"
  description = "Db server traffic allowed ssh & http"

}

resource "aws_vpc_security_group_ingress_rule" "db-ingress-22" {
  security_group_id = aws_security_group.db-sg.id
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "db-ingress-80" {
  security_group_id = aws_security_group.db-sg.id
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "db-egress" {
  security_group_id = aws_security_group.db-sg.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}
