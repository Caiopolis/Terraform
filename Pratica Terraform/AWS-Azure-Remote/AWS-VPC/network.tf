// Documentação AWS VPC: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
//Documentação Subnet: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet
// Documentação internet gateway: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway

resource "aws_vpc" "vpc" {   // VPC é uma rede virtual dedicada à sua conta da AWS, permitindo que você lance recursos da AWS em uma rede virtual isolada.
  cidr_block = "10.0.0.0/16" // Define o bloco CIDR da VPC, que especifica o intervalo de endereços IP privados disponíveis na VPC.


  tags = {
    Name = "vpc-terraform" // o Name com maiusculo vai definir o nome da VPC no console da AWS, facilitando a identificação.
  }
}

resource "aws_subnet" "subnet" { // Subnet é uma subdivisão da VPC, permitindo que você segmente a rede em sub-redes menores.
  vpc_id     = aws_vpc.vpc.id    // Referencia o ID da VPC criada anteriormente.
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform"

  }
}

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "internet-gateway-terraform"
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }


  tags = {
    Name = "rote-table-terraform"
  }
}

resource "aws_route_table_association" "rta" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.route_table.id
}


resource "aws_security_group" "security_group" {
  name        = "security-group-terraform"
  description = "Permitir acesso"
  vpc_id      = aws_vpc.vpc.id

  # Regra de saída (Egress): liberando todo o tráfego de saída por padrão
  egress {
    description = "Permitir todo o trafego de saida"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Regra de entrada (Ingress): exemplo para liberar SSH (porta 22) ou TLS (443)
  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.vpc.cidr_block]
  }

  tags = {
    Name = "security-group"
  }
}

