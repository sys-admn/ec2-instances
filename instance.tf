
# Générer une clé privée via TLS
resource "tls_private_key" "generated_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Créer un key pair dans AWS avec la clé publique générée
resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.generated_key.public_key_openssh
}

# Création de l'instance EC2
resource "aws_instance" "my_instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.my_subnet.id
  vpc_security_group_ids  = [aws_security_group.my_sg.id]
  key_name        = aws_key_pair.generated_key.key_name


  tags = {
    ServerType = "WebServer"
    Name= "WebServer"
  }
}


