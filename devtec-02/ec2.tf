resource "aws_instance" "servidor-web" {
  ami                    = "ami-022e1a32d3f742bd8"
  instance_type          = "t2.micro"
  tags = {
    Name = "Servidor-Web"
  }
}