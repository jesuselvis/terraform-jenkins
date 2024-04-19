terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  # profile = "integrations-dev"
}

# module "vpc" {
#   source = "git::ssh://git@bitbucket.org/analitika-cloud-escuelita/jesus-aws-vpc.git"#no cambiar
#   vpc_cidr_block = "10.0.0.0/16"
#   subnet_cidr_block_pub = ["10.0.1.0/24"] #you can add two more subnets
#   subnet_cidr_block_priv = ["10.0.2.0/24"]
#   name = "vpc-main"
#   azs = [ "us-east-1a"]
# }


resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # Especifica el bloque CIDR para la VPC

  tags = {
    Name = "MyVPC"  # Nombre descriptivo para la VPC
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id  # Referencia a la VPC creada anteriormente
  cidr_block              = "10.0.1.0/24"       # Especifica el bloque CIDR para la subred pública
  map_public_ip_on_launch = true                # Habilita la asignación automática de IP pública a las instancias en esta subred

  tags = {
    Name = "PublicSubnet"  # Nombre descriptivo para la subred pública
  }
}
